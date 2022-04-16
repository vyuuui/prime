.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global Draw__20CSamusFaceReflectionCFRC13CStateManager
Draw__20CSamusFaceReflectionCFRC13CStateManager:
/* 8015ADC4 00157D24  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 8015ADC8 00157D28  7C 08 02 A6 */	mflr r0
/* 8015ADCC 00157D2C  90 01 02 34 */	stw r0, 0x234(r1)
/* 8015ADD0 00157D30  DB E1 02 20 */	stfd f31, 0x220(r1)
/* 8015ADD4 00157D34  F3 E1 02 28 */	psq_st f31, 552(r1), 0, qr0
/* 8015ADD8 00157D38  DB C1 02 10 */	stfd f30, 0x210(r1)
/* 8015ADDC 00157D3C  F3 C1 02 18 */	psq_st f30, 536(r1), 0, qr0
/* 8015ADE0 00157D40  DB A1 02 00 */	stfd f29, 0x200(r1)
/* 8015ADE4 00157D44  F3 A1 02 08 */	psq_st f29, 520(r1), 0, qr0
/* 8015ADE8 00157D48  DB 81 01 F0 */	stfd f28, 0x1f0(r1)
/* 8015ADEC 00157D4C  F3 81 01 F8 */	psq_st f28, 504(r1), 0, qr0
/* 8015ADF0 00157D50  DB 61 01 E0 */	stfd f27, 0x1e0(r1)
/* 8015ADF4 00157D54  F3 61 01 E8 */	psq_st f27, 488(r1), 0, qr0
/* 8015ADF8 00157D58  DB 41 01 D0 */	stfd f26, 0x1d0(r1)
/* 8015ADFC 00157D5C  F3 41 01 D8 */	psq_st f26, 472(r1), 0, qr0
/* 8015AE00 00157D60  DB 21 01 C0 */	stfd f25, 0x1c0(r1)
/* 8015AE04 00157D64  F3 21 01 C8 */	psq_st f25, 456(r1), 0, qr0
/* 8015AE08 00157D68  DB 01 01 B0 */	stfd f24, 0x1b0(r1)
/* 8015AE0C 00157D6C  F3 01 01 B8 */	psq_st f24, 440(r1), 0, qr0
/* 8015AE10 00157D70  DA E1 01 A0 */	stfd f23, 0x1a0(r1)
/* 8015AE14 00157D74  F2 E1 01 A8 */	psq_st f23, 424(r1), 0, qr0
/* 8015AE18 00157D78  DA C1 01 90 */	stfd f22, 0x190(r1)
/* 8015AE1C 00157D7C  F2 C1 01 98 */	psq_st f22, 408(r1), 0, qr0
/* 8015AE20 00157D80  DA A1 01 80 */	stfd f21, 0x180(r1)
/* 8015AE24 00157D84  F2 A1 01 88 */	psq_st f21, 392(r1), 0, qr0
/* 8015AE28 00157D88  DA 81 01 70 */	stfd f20, 0x170(r1)
/* 8015AE2C 00157D8C  F2 81 01 78 */	psq_st f20, 376(r1), 0, qr0
/* 8015AE30 00157D90  DA 61 01 60 */	stfd f19, 0x160(r1)
/* 8015AE34 00157D94  F2 61 01 68 */	psq_st f19, 360(r1), 0, qr0
/* 8015AE38 00157D98  93 E1 01 5C */	stw r31, 0x15c(r1)
/* 8015AE3C 00157D9C  93 C1 01 58 */	stw r30, 0x158(r1)
/* 8015AE40 00157DA0  93 A1 01 54 */	stw r29, 0x154(r1)
/* 8015AE44 00157DA4  7C 7D 1B 78 */	mr r29, r3
/* 8015AE48 00157DA8  7C 9E 23 78 */	mr r30, r4
/* 8015AE4C 00157DAC  88 03 00 70 */	lbz r0, 0x70(r3)
/* 8015AE50 00157DB0  28 00 00 00 */	cmplwi r0, 0
/* 8015AE54 00157DB4  40 82 03 00 */	bne lbl_8015B154
/* 8015AE58 00157DB8  80 7E 08 70 */	lwz r3, 0x870(r30)
/* 8015AE5C 00157DBC  4B EB 0C BD */	bl GetCurrentCamera__14CCameraManagerCFR13CStateManager
/* 8015AE60 00157DC0  7C 64 1B 78 */	mr r4, r3
/* 8015AE64 00157DC4  38 61 00 08 */	addi r3, r1, 8
/* 8015AE68 00157DC8  4B F5 36 0D */	bl "__ct__32TCastToPtr<18CFirstPersonCamera>FR7CEntity"
/* 8015AE6C 00157DCC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8015AE70 00157DD0  28 1F 00 00 */	cmplwi r31, 0
/* 8015AE74 00157DD4  41 82 02 E0 */	beq lbl_8015B154
/* 8015AE78 00157DD8  C2 FF 00 60 */	lfs f23, 0x60(r31)
/* 8015AE7C 00157DDC  38 9F 00 34 */	addi r4, r31, 0x34
/* 8015AE80 00157DE0  C3 1F 00 50 */	lfs f24, 0x50(r31)
/* 8015AE84 00157DE4  38 61 00 78 */	addi r3, r1, 0x78
/* 8015AE88 00157DE8  C3 3F 00 40 */	lfs f25, 0x40(r31)
/* 8015AE8C 00157DEC  C3 BF 00 58 */	lfs f29, 0x58(r31)
/* 8015AE90 00157DF0  C2 7F 00 48 */	lfs f19, 0x48(r31)
/* 8015AE94 00157DF4  C2 9F 00 38 */	lfs f20, 0x38(r31)
/* 8015AE98 00157DF8  C3 5F 00 5C */	lfs f26, 0x5c(r31)
/* 8015AE9C 00157DFC  C3 7F 00 4C */	lfs f27, 0x4c(r31)
/* 8015AEA0 00157E00  C3 9F 00 3C */	lfs f28, 0x3c(r31)
/* 8015AEA4 00157E04  48 1B 72 85 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8015AEA8 00157E08  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 8015AEAC 00157E0C  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 8015AEB0 00157E10  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8015AEB4 00157E14  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8015AEB8 00157E18  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 8015AEBC 00157E1C  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 8015AEC0 00157E20  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8015AEC4 00157E24  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 8015AEC8 00157E28  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8015AECC 00157E2C  C0 23 01 44 */	lfs f1, 0x144(r3)
/* 8015AED0 00157E30  4B F1 94 81 */	bl FaceReflectionDistanceDebugValueToActualValue__9CTweakGuiFf
/* 8015AED4 00157E34  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 8015AED8 00157E38  FE A0 08 90 */	fmr f21, f1
/* 8015AEDC 00157E3C  C0 23 01 48 */	lfs f1, 0x148(r3)
/* 8015AEE0 00157E40  4B F1 94 61 */	bl FaceReflectionHeightDebugValueToActualValue__9CTweakGuiFf
/* 8015AEE4 00157E44  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 8015AEE8 00157E48  FE C0 08 90 */	fmr f22, f1
/* 8015AEEC 00157E4C  C0 23 01 4C */	lfs f1, 0x14c(r3)
/* 8015AEF0 00157E50  4B F1 94 41 */	bl FaceReflectionAspectDebugValueToActualValue__9CTweakGuiFf
/* 8015AEF4 00157E54  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 8015AEF8 00157E58  FF C0 08 90 */	fmr f30, f1
/* 8015AEFC 00157E5C  C0 23 01 3C */	lfs f1, 0x13c(r3)
/* 8015AF00 00157E60  4B F1 94 21 */	bl FaceReflectionOrthoWidthDebugValueToActualValue__9CTweakGuiFf
/* 8015AF04 00157E64  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 8015AF08 00157E68  FF E0 08 90 */	fmr f31, f1
/* 8015AF0C 00157E6C  C0 23 01 40 */	lfs f1, 0x140(r3)
/* 8015AF10 00157E70  4B F1 94 01 */	bl FaceReflectionOrthoHeightDebugValueToActualValue__9CTweakGuiFf
/* 8015AF14 00157E74  EC 15 04 F2 */	fmuls f0, f21, f19
/* 8015AF18 00157E78  38 61 00 68 */	addi r3, r1, 0x68
/* 8015AF1C 00157E7C  EC 75 07 72 */	fmuls f3, f21, f29
/* 8015AF20 00157E80  38 81 00 88 */	addi r4, r1, 0x88
/* 8015AF24 00157E84  EC 55 05 32 */	fmuls f2, f21, f20
/* 8015AF28 00157E88  38 BD 00 50 */	addi r5, r29, 0x50
/* 8015AF2C 00157E8C  EC B6 07 32 */	fmuls f5, f22, f28
/* 8015AF30 00157E90  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8015AF34 00157E94  EC F8 00 2A */	fadds f7, f24, f0
/* 8015AF38 00157E98  EC 96 06 F2 */	fmuls f4, f22, f27
/* 8015AF3C 00157E9C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8015AF40 00157EA0  EC 59 10 2A */	fadds f2, f25, f2
/* 8015AF44 00157EA4  EC 16 06 B2 */	fmuls f0, f22, f26
/* 8015AF48 00157EA8  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8015AF4C 00157EAC  EC D7 18 2A */	fadds f6, f23, f3
/* 8015AF50 00157EB0  ED 07 20 2A */	fadds f8, f7, f4
/* 8015AF54 00157EB4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8015AF58 00157EB8  FE 60 08 90 */	fmr f19, f1
/* 8015AF5C 00157EBC  EC 86 00 2A */	fadds f4, f6, f0
/* 8015AF60 00157EC0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8015AF64 00157EC4  EC 02 28 2A */	fadds f0, f2, f5
/* 8015AF68 00157EC8  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8015AF6C 00157ECC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8015AF70 00157ED0  D0 E1 00 54 */	stfs f7, 0x54(r1)
/* 8015AF74 00157ED4  D0 C1 00 58 */	stfs f6, 0x58(r1)
/* 8015AF78 00157ED8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8015AF7C 00157EDC  D1 01 00 60 */	stfs f8, 0x60(r1)
/* 8015AF80 00157EE0  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 8015AF84 00157EE4  48 1B 62 1D */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8015AF88 00157EE8  38 61 00 98 */	addi r3, r1, 0x98
/* 8015AF8C 00157EEC  38 81 00 68 */	addi r4, r1, 0x68
/* 8015AF90 00157EF0  48 1B 70 FD */	bl BuildTransform__11CQuaternionCFv
/* 8015AF94 00157EF4  38 61 00 BC */	addi r3, r1, 0xbc
/* 8015AF98 00157EF8  38 81 00 98 */	addi r4, r1, 0x98
/* 8015AF9C 00157EFC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8015AFA0 00157F00  48 1B 82 D9 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 8015AFA4 00157F04  3C A0 80 47 */	lis r5, lbl_8046C7A0@ha
/* 8015AFA8 00157F08  7C 64 1B 78 */	mr r4, r3
/* 8015AFAC 00157F0C  38 A5 C7 A0 */	addi r5, r5, lbl_8046C7A0@l
/* 8015AFB0 00157F10  38 61 00 EC */	addi r3, r1, 0xec
/* 8015AFB4 00157F14  48 1B 79 9D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8015AFB8 00157F18  38 61 01 1C */	addi r3, r1, 0x11c
/* 8015AFBC 00157F1C  38 81 00 EC */	addi r4, r1, 0xec
/* 8015AFC0 00157F20  48 1B 7B B5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8015AFC4 00157F24  38 7F 00 34 */	addi r3, r31, 0x34
/* 8015AFC8 00157F28  48 1B 17 85 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 8015AFCC 00157F2C  FC 00 F8 50 */	fneg f0, f31
/* 8015AFD0 00157F30  C0 A2 9E A4 */	lfs f5, lbl_805ABBC4@sda21(r2)
/* 8015AFD4 00157F34  FC 60 98 90 */	fmr f3, f19
/* 8015AFD8 00157F38  C0 C2 9E A8 */	lfs f6, lbl_805ABBC8@sda21(r2)
/* 8015AFDC 00157F3C  EC 5E 07 F2 */	fmuls f2, f30, f31
/* 8015AFE0 00157F40  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8015AFE4 00157F44  FC 80 98 50 */	fneg f4, f19
/* 8015AFE8 00157F48  48 1B 15 6D */	bl SetOrtho__9CGraphicsFffffff
/* 8015AFEC 00157F4C  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 8015AFF0 00157F50  2C 00 00 01 */	cmpwi r0, 1
/* 8015AFF4 00157F54  40 82 00 0C */	bne lbl_8015B000
/* 8015AFF8 00157F58  3B E0 00 00 */	li r31, 0
/* 8015AFFC 00157F5C  48 00 00 08 */	b lbl_8015B004
lbl_8015B000:
/* 8015B000 00157F60  83 FD 00 4C */	lwz r31, 0x4c(r29)
lbl_8015B004:
/* 8015B004 00157F64  2C 00 00 03 */	cmpwi r0, 3
/* 8015B008 00157F68  40 82 00 4C */	bne lbl_8015B054
/* 8015B00C 00157F6C  C0 22 9E AC */	lfs f1, lbl_805ABBCC@sda21(r2)
/* 8015B010 00157F70  38 80 00 00 */	li r4, 0
/* 8015B014 00157F74  38 00 00 03 */	li r0, 3
/* 8015B018 00157F78  98 81 00 30 */	stb r4, 0x30(r1)
/* 8015B01C 00157F7C  FC 40 08 90 */	fmr f2, f1
/* 8015B020 00157F80  38 61 00 34 */	addi r3, r1, 0x34
/* 8015B024 00157F84  FC 60 08 90 */	fmr f3, f1
/* 8015B028 00157F88  98 81 00 31 */	stb r4, 0x31(r1)
/* 8015B02C 00157F8C  FC 80 08 90 */	fmr f4, f1
/* 8015B030 00157F90  B0 01 00 32 */	sth r0, 0x32(r1)
/* 8015B034 00157F94  48 20 83 B9 */	bl __ct__6CColorFffff
/* 8015B038 00157F98  7F A3 EB 78 */	mr r3, r29
/* 8015B03C 00157F9C  7F C4 F3 78 */	mr r4, r30
/* 8015B040 00157FA0  7F E6 FB 78 */	mr r6, r31
/* 8015B044 00157FA4  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8015B048 00157FA8  38 E1 00 30 */	addi r7, r1, 0x30
/* 8015B04C 00157FAC  4B FB 9D 71 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 8015B050 00157FB0  48 00 01 04 */	b lbl_8015B154
lbl_8015B054:
/* 8015B054 00157FB4  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 8015B058 00157FB8  7F C4 F3 78 */	mr r4, r30
/* 8015B05C 00157FBC  80 63 00 00 */	lwz r3, 0(r3)
/* 8015B060 00157FC0  4B F3 64 F9 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 8015B064 00157FC4  2C 03 00 00 */	cmpwi r3, 0
/* 8015B068 00157FC8  40 82 00 18 */	bne lbl_8015B080
/* 8015B06C 00157FCC  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 8015B070 00157FD0  80 63 00 00 */	lwz r3, 0(r3)
/* 8015B074 00157FD4  4B F3 67 F1 */	bl GetVisorTransitionFactor__12CPlayerStateCFv
/* 8015B078 00157FD8  FE E0 08 90 */	fmr f23, f1
/* 8015B07C 00157FDC  48 00 00 08 */	b lbl_8015B084
lbl_8015B080:
/* 8015B080 00157FE0  C2 E2 9E B0 */	lfs f23, lbl_805ABBD0@sda21(r2)
lbl_8015B084:
/* 8015B084 00157FE4  C0 02 9E B0 */	lfs f0, lbl_805ABBD0@sda21(r2)
/* 8015B088 00157FE8  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 8015B08C 00157FEC  40 81 00 C8 */	ble lbl_8015B154
/* 8015B090 00157FF0  48 1E EF 25 */	bl Black__6CColorFv
/* 8015B094 00157FF4  39 20 00 03 */	li r9, 3
/* 8015B098 00157FF8  81 03 00 00 */	lwz r8, 0(r3)
/* 8015B09C 00157FFC  55 20 00 3A */	rlwinm r0, r9, 0, 0, 0x1d
/* 8015B0A0 00158000  39 60 00 07 */	li r11, 7
/* 8015B0A4 00158004  39 40 00 00 */	li r10, 0
/* 8015B0A8 00158008  99 61 00 20 */	stb r11, 0x20(r1)
/* 8015B0AC 0015800C  60 00 00 03 */	ori r0, r0, 3
/* 8015B0B0 00158010  7F A3 EB 78 */	mr r3, r29
/* 8015B0B4 00158014  99 41 00 21 */	stb r10, 0x21(r1)
/* 8015B0B8 00158018  7F C4 F3 78 */	mr r4, r30
/* 8015B0BC 0015801C  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8015B0C0 00158020  38 E1 00 28 */	addi r7, r1, 0x28
/* 8015B0C4 00158024  B1 21 00 22 */	sth r9, 0x22(r1)
/* 8015B0C8 00158028  38 C0 00 00 */	li r6, 0
/* 8015B0CC 0015802C  91 01 00 24 */	stw r8, 0x24(r1)
/* 8015B0D0 00158030  99 61 00 28 */	stb r11, 0x28(r1)
/* 8015B0D4 00158034  99 41 00 29 */	stb r10, 0x29(r1)
/* 8015B0D8 00158038  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 8015B0DC 0015803C  91 01 00 2C */	stw r8, 0x2c(r1)
/* 8015B0E0 00158040  4B FB 9C DD */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 8015B0E4 00158044  C0 22 9E AC */	lfs f1, lbl_805ABBCC@sda21(r2)
/* 8015B0E8 00158048  38 A0 00 07 */	li r5, 7
/* 8015B0EC 0015804C  38 80 00 00 */	li r4, 0
/* 8015B0F0 00158050  38 00 00 03 */	li r0, 3
/* 8015B0F4 00158054  FC 40 08 90 */	fmr f2, f1
/* 8015B0F8 00158058  98 A1 00 10 */	stb r5, 0x10(r1)
/* 8015B0FC 0015805C  FC 60 08 90 */	fmr f3, f1
/* 8015B100 00158060  38 61 00 14 */	addi r3, r1, 0x14
/* 8015B104 00158064  FC 80 B8 90 */	fmr f4, f23
/* 8015B108 00158068  98 81 00 11 */	stb r4, 0x11(r1)
/* 8015B10C 0015806C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8015B110 00158070  48 20 82 DD */	bl __ct__6CColorFffff
/* 8015B114 00158074  A0 01 00 12 */	lhz r0, 0x12(r1)
/* 8015B118 00158078  7F A3 EB 78 */	mr r3, r29
/* 8015B11C 0015807C  88 A1 00 10 */	lbz r5, 0x10(r1)
/* 8015B120 00158080  7F C4 F3 78 */	mr r4, r30
/* 8015B124 00158084  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8015B128 00158088  88 E1 00 11 */	lbz r7, 0x11(r1)
/* 8015B12C 0015808C  60 08 00 01 */	ori r8, r0, 1
/* 8015B130 00158090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015B134 00158094  98 A1 00 18 */	stb r5, 0x18(r1)
/* 8015B138 00158098  7F E6 FB 78 */	mr r6, r31
/* 8015B13C 0015809C  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8015B140 001580A0  98 E1 00 19 */	stb r7, 0x19(r1)
/* 8015B144 001580A4  38 E1 00 18 */	addi r7, r1, 0x18
/* 8015B148 001580A8  B1 01 00 1A */	sth r8, 0x1a(r1)
/* 8015B14C 001580AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015B150 001580B0  4B FB 9C 6D */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
lbl_8015B154:
/* 8015B154 001580B4  E3 E1 02 28 */	psq_l f31, 552(r1), 0, qr0
/* 8015B158 001580B8  CB E1 02 20 */	lfd f31, 0x220(r1)
/* 8015B15C 001580BC  E3 C1 02 18 */	psq_l f30, 536(r1), 0, qr0
/* 8015B160 001580C0  CB C1 02 10 */	lfd f30, 0x210(r1)
/* 8015B164 001580C4  E3 A1 02 08 */	psq_l f29, 520(r1), 0, qr0
/* 8015B168 001580C8  CB A1 02 00 */	lfd f29, 0x200(r1)
/* 8015B16C 001580CC  E3 81 01 F8 */	psq_l f28, 504(r1), 0, qr0
/* 8015B170 001580D0  CB 81 01 F0 */	lfd f28, 0x1f0(r1)
/* 8015B174 001580D4  E3 61 01 E8 */	psq_l f27, 488(r1), 0, qr0
/* 8015B178 001580D8  CB 61 01 E0 */	lfd f27, 0x1e0(r1)
/* 8015B17C 001580DC  E3 41 01 D8 */	psq_l f26, 472(r1), 0, qr0
/* 8015B180 001580E0  CB 41 01 D0 */	lfd f26, 0x1d0(r1)
/* 8015B184 001580E4  E3 21 01 C8 */	psq_l f25, 456(r1), 0, qr0
/* 8015B188 001580E8  CB 21 01 C0 */	lfd f25, 0x1c0(r1)
/* 8015B18C 001580EC  E3 01 01 B8 */	psq_l f24, 440(r1), 0, qr0
/* 8015B190 001580F0  CB 01 01 B0 */	lfd f24, 0x1b0(r1)
/* 8015B194 001580F4  E2 E1 01 A8 */	psq_l f23, 424(r1), 0, qr0
/* 8015B198 001580F8  CA E1 01 A0 */	lfd f23, 0x1a0(r1)
/* 8015B19C 001580FC  E2 C1 01 98 */	psq_l f22, 408(r1), 0, qr0
/* 8015B1A0 00158100  CA C1 01 90 */	lfd f22, 0x190(r1)
/* 8015B1A4 00158104  E2 A1 01 88 */	psq_l f21, 392(r1), 0, qr0
/* 8015B1A8 00158108  CA A1 01 80 */	lfd f21, 0x180(r1)
/* 8015B1AC 0015810C  E2 81 01 78 */	psq_l f20, 376(r1), 0, qr0
/* 8015B1B0 00158110  CA 81 01 70 */	lfd f20, 0x170(r1)
/* 8015B1B4 00158114  E2 61 01 68 */	psq_l f19, 360(r1), 0, qr0
/* 8015B1B8 00158118  CA 61 01 60 */	lfd f19, 0x160(r1)
/* 8015B1BC 0015811C  83 E1 01 5C */	lwz r31, 0x15c(r1)
/* 8015B1C0 00158120  83 C1 01 58 */	lwz r30, 0x158(r1)
/* 8015B1C4 00158124  80 01 02 34 */	lwz r0, 0x234(r1)
/* 8015B1C8 00158128  83 A1 01 54 */	lwz r29, 0x154(r1)
/* 8015B1CC 0015812C  7C 08 03 A6 */	mtlr r0
/* 8015B1D0 00158130  38 21 02 30 */	addi r1, r1, 0x230
/* 8015B1D4 00158134  4E 80 00 20 */	blr 

.global PreDraw__20CSamusFaceReflectionFRC13CStateManager
PreDraw__20CSamusFaceReflectionFRC13CStateManager:
/* 8015B1D8 00158138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015B1DC 0015813C  7C 08 02 A6 */	mflr r0
/* 8015B1E0 00158140  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015B1E4 00158144  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015B1E8 00158148  7C 9F 23 78 */	mr r31, r4
/* 8015B1EC 0015814C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015B1F0 00158150  7C 7E 1B 78 */	mr r30, r3
/* 8015B1F4 00158154  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8015B1F8 00158158  2C 00 00 02 */	cmpwi r0, 2
/* 8015B1FC 0015815C  41 82 00 4C */	beq lbl_8015B248
/* 8015B200 00158160  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 8015B204 00158164  4B FA 9E AD */	bl GetActiveLightCount__12CActorLightsCFv
/* 8015B208 00158168  28 03 00 01 */	cmplwi r3, 1
/* 8015B20C 0015816C  40 80 00 18 */	bge lbl_8015B224
/* 8015B210 00158170  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 8015B214 00158174  2C 00 00 00 */	cmpwi r0, 0
/* 8015B218 00158178  41 82 00 30 */	beq lbl_8015B248
/* 8015B21C 0015817C  2C 00 00 03 */	cmpwi r0, 3
/* 8015B220 00158180  41 82 00 28 */	beq lbl_8015B248
lbl_8015B224:
/* 8015B224 00158184  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 8015B228 00158188  7F E4 FB 78 */	mr r4, r31
/* 8015B22C 0015818C  4B EB 08 ED */	bl GetCurrentCamera__14CCameraManagerCFR13CStateManager
/* 8015B230 00158190  7C 64 1B 78 */	mr r4, r3
/* 8015B234 00158194  38 61 00 08 */	addi r3, r1, 8
/* 8015B238 00158198  4B F5 32 3D */	bl "__ct__32TCastToPtr<18CFirstPersonCamera>FR7CEntity"
/* 8015B23C 0015819C  80 03 00 04 */	lwz r0, 4(r3)
/* 8015B240 001581A0  28 00 00 00 */	cmplwi r0, 0
/* 8015B244 001581A4  40 82 00 10 */	bne lbl_8015B254
lbl_8015B248:
/* 8015B248 001581A8  38 00 00 01 */	li r0, 1
/* 8015B24C 001581AC  98 1E 00 70 */	stb r0, 0x70(r30)
/* 8015B250 001581B0  48 00 00 14 */	b lbl_8015B264
lbl_8015B254:
/* 8015B254 001581B4  38 00 00 00 */	li r0, 0
/* 8015B258 001581B8  98 1E 00 70 */	stb r0, 0x70(r30)
/* 8015B25C 001581BC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8015B260 001581C0  4B ED 17 A5 */	bl PreRender__9CAnimDataFv
lbl_8015B264:
/* 8015B264 001581C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015B268 001581C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015B26C 001581CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015B270 001581D0  7C 08 03 A6 */	mtlr r0
/* 8015B274 001581D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8015B278 001581D8  4E 80 00 20 */	blr 

.global Update__20CSamusFaceReflectionFfRC13CStateManagerR9CRandom16
Update__20CSamusFaceReflectionFfRC13CStateManagerR9CRandom16:
/* 8015B27C 001581DC  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 8015B280 001581E0  7C 08 02 A6 */	mflr r0
/* 8015B284 001581E4  90 01 02 14 */	stw r0, 0x214(r1)
/* 8015B288 001581E8  DB E1 02 00 */	stfd f31, 0x200(r1)
/* 8015B28C 001581EC  F3 E1 02 08 */	psq_st f31, 520(r1), 0, qr0
/* 8015B290 001581F0  DB C1 01 F0 */	stfd f30, 0x1f0(r1)
/* 8015B294 001581F4  F3 C1 01 F8 */	psq_st f30, 504(r1), 0, qr0
/* 8015B298 001581F8  DB A1 01 E0 */	stfd f29, 0x1e0(r1)
/* 8015B29C 001581FC  F3 A1 01 E8 */	psq_st f29, 488(r1), 0, qr0
/* 8015B2A0 00158200  DB 81 01 D0 */	stfd f28, 0x1d0(r1)
/* 8015B2A4 00158204  F3 81 01 D8 */	psq_st f28, 472(r1), 0, qr0
/* 8015B2A8 00158208  93 E1 01 CC */	stw r31, 0x1cc(r1)
/* 8015B2AC 0015820C  93 C1 01 C8 */	stw r30, 0x1c8(r1)
/* 8015B2B0 00158210  93 A1 01 C4 */	stw r29, 0x1c4(r1)
/* 8015B2B4 00158214  93 81 01 C0 */	stw r28, 0x1c0(r1)
/* 8015B2B8 00158218  FF E0 08 90 */	fmr f31, f1
/* 8015B2BC 0015821C  7C 9C 23 78 */	mr r28, r4
/* 8015B2C0 00158220  7C 7F 1B 78 */	mr r31, r3
/* 8015B2C4 00158224  80 64 08 70 */	lwz r3, 0x870(r4)
/* 8015B2C8 00158228  7C BE 2B 78 */	mr r30, r5
/* 8015B2CC 0015822C  4B EB 08 4D */	bl GetCurrentCamera__14CCameraManagerCFR13CStateManager
/* 8015B2D0 00158230  7C 64 1B 78 */	mr r4, r3
/* 8015B2D4 00158234  38 61 00 1C */	addi r3, r1, 0x1c
/* 8015B2D8 00158238  4B F5 31 9D */	bl "__ct__32TCastToPtr<18CFirstPersonCamera>FR7CEntity"
/* 8015B2DC 0015823C  83 A3 00 04 */	lwz r29, 4(r3)
/* 8015B2E0 00158240  28 1D 00 00 */	cmplwi r29, 0
/* 8015B2E4 00158244  41 82 03 2C */	beq lbl_8015B610
/* 8015B2E8 00158248  FC 20 F8 90 */	fmr f1, f31
/* 8015B2EC 0015824C  C3 DD 00 60 */	lfs f30, 0x60(r29)
/* 8015B2F0 00158250  C3 BD 00 50 */	lfs f29, 0x50(r29)
/* 8015B2F4 00158254  7F E4 FB 78 */	mr r4, r31
/* 8015B2F8 00158258  C3 9D 00 40 */	lfs f28, 0x40(r29)
/* 8015B2FC 0015825C  7F C5 F3 78 */	mr r5, r30
/* 8015B300 00158260  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8015B304 00158264  38 C0 00 01 */	li r6, 1
/* 8015B308 00158268  4B FB A7 B1 */	bl AdvanceAnimationIgnoreParticles__10CModelDataFfR9CRandom16b
/* 8015B30C 0015826C  83 DF 00 4C */	lwz r30, 0x4c(r31)
/* 8015B310 00158270  38 60 00 00 */	li r3, 0
/* 8015B314 00158274  88 1E 02 98 */	lbz r0, 0x298(r30)
/* 8015B318 00158278  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8015B31C 0015827C  98 1E 02 98 */	stb r0, 0x298(r30)
/* 8015B320 00158280  80 7C 08 4C */	lwz r3, 0x84c(r28)
/* 8015B324 00158284  80 0D A3 90 */	lwz r0, lbl_805A8F50@sda21(r13)
/* 8015B328 00158288  80 63 00 04 */	lwz r3, 4(r3)
/* 8015B32C 0015828C  7C 03 00 00 */	cmpw r3, r0
/* 8015B330 00158290  90 61 00 18 */	stw r3, 0x18(r1)
/* 8015B334 00158294  41 82 02 DC */	beq lbl_8015B610
/* 8015B338 00158298  C0 A2 9E B4 */	lfs f5, lbl_805ABBD4@sda21(r2)
/* 8015B33C 0015829C  38 61 01 0C */	addi r3, r1, 0x10c
/* 8015B340 001582A0  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8015B344 001582A4  38 A1 00 AC */	addi r5, r1, 0xac
/* 8015B348 001582A8  EC 1C 28 2A */	fadds f0, f28, f5
/* 8015B34C 001582AC  EC 9D 28 2A */	fadds f4, f29, f5
/* 8015B350 001582B0  EC 7E 28 2A */	fadds f3, f30, f5
/* 8015B354 001582B4  EC 5C 28 28 */	fsubs f2, f28, f5
/* 8015B358 001582B8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8015B35C 001582BC  EC 3D 28 28 */	fsubs f1, f29, f5
/* 8015B360 001582C0  EC 1E 28 28 */	fsubs f0, f30, f5
/* 8015B364 001582C4  D0 81 00 B0 */	stfs f4, 0xb0(r1)
/* 8015B368 001582C8  D0 61 00 B4 */	stfs f3, 0xb4(r1)
/* 8015B36C 001582CC  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 8015B370 001582D0  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 8015B374 001582D4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8015B378 001582D8  48 1D D1 91 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8015B37C 001582DC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8015B380 001582E0  7F C3 F3 78 */	mr r3, r30
/* 8015B384 001582E4  80 DC 08 50 */	lwz r6, 0x850(r28)
/* 8015B388 001582E8  7F 84 E3 78 */	mr r4, r28
/* 8015B38C 001582EC  54 05 18 38 */	slwi r5, r0, 3
/* 8015B390 001582F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B394 001582F4  80 E6 00 20 */	lwz r7, 0x20(r6)
/* 8015B398 001582F8  38 05 00 04 */	addi r0, r5, 4
/* 8015B39C 001582FC  38 C1 01 0C */	addi r6, r1, 0x10c
/* 8015B3A0 00158300  7C A7 00 2E */	lwzx r5, r7, r0
/* 8015B3A4 00158304  4B FA 7F 19 */	bl BuildFaceLightList__12CActorLightsFRC13CStateManagerRC9CGameAreaRC6CAABox
/* 8015B3A8 00158308  38 61 01 6C */	addi r3, r1, 0x16c
/* 8015B3AC 0015830C  38 9D 00 34 */	addi r4, r29, 0x34
/* 8015B3B0 00158310  48 1B 7D 45 */	bl BuildMatrix3f__12CTransform4fCFv
/* 8015B3B4 00158314  38 61 01 90 */	addi r3, r1, 0x190
/* 8015B3B8 00158318  38 81 01 6C */	addi r4, r1, 0x16c
/* 8015B3BC 0015831C  48 1B 4C 69 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 8015B3C0 00158320  C0 41 01 AC */	lfs f2, 0x1ac(r1)
/* 8015B3C4 00158324  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8015B3C8 00158328  C0 21 01 A0 */	lfs f1, 0x1a0(r1)
/* 8015B3CC 0015832C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8015B3D0 00158330  C0 01 01 94 */	lfs f0, 0x194(r1)
/* 8015B3D4 00158334  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8015B3D8 00158338  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8015B3DC 0015833C  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 8015B3E0 00158340  48 1B 89 F1 */	bl __ct__11CUnitVectorFRC9CVector3f
/* 8015B3E4 00158344  3C 60 80 5A */	lis r3, lbl_805A6724@ha
/* 8015B3E8 00158348  C0 C2 9E B8 */	lfs f6, lbl_805ABBD8@sda21(r2)
/* 8015B3EC 0015834C  3B C3 67 24 */	addi r30, r3, lbl_805A6724@l
/* 8015B3F0 00158350  C0 41 00 E4 */	lfs f2, 0xe4(r1)
/* 8015B3F4 00158354  C0 BE 00 00 */	lfs f5, 0(r30)
/* 8015B3F8 00158358  38 61 00 90 */	addi r3, r1, 0x90
/* 8015B3FC 0015835C  C0 9E 00 04 */	lfs f4, 4(r30)
/* 8015B400 00158360  38 81 00 84 */	addi r4, r1, 0x84
/* 8015B404 00158364  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8015B408 00158368  38 A1 00 78 */	addi r5, r1, 0x78
/* 8015B40C 0015836C  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 8015B410 00158370  38 C1 00 10 */	addi r6, r1, 0x10
/* 8015B414 00158374  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8015B418 00158378  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8015B41C 0015837C  D0 A1 00 78 */	stfs f5, 0x78(r1)
/* 8015B420 00158380  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 8015B424 00158384  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8015B428 00158388  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8015B42C 0015838C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8015B430 00158390  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8015B434 00158394  48 1B 62 61 */	bl LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
/* 8015B438 00158398  3C 60 80 5A */	lis r3, lbl_805A6724@ha
/* 8015B43C 0015839C  C0 E1 00 90 */	lfs f7, 0x90(r1)
/* 8015B440 001583A0  38 C3 67 24 */	addi r6, r3, lbl_805A6724@l
/* 8015B444 001583A4  C0 C1 00 94 */	lfs f6, 0x94(r1)
/* 8015B448 001583A8  C0 A1 00 98 */	lfs f5, 0x98(r1)
/* 8015B44C 001583AC  38 61 00 44 */	addi r3, r1, 0x44
/* 8015B450 001583B0  C0 81 00 9C */	lfs f4, 0x9c(r1)
/* 8015B454 001583B4  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8015B458 001583B8  C0 62 9E B8 */	lfs f3, lbl_805ABBD8@sda21(r2)
/* 8015B45C 001583BC  38 BF 00 60 */	addi r5, r31, 0x60
/* 8015B460 001583C0  C0 46 00 00 */	lfs f2, 0(r6)
/* 8015B464 001583C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8015B468 001583C8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8015B46C 001583CC  D0 E1 00 D4 */	stfs f7, 0xd4(r1)
/* 8015B470 001583D0  D0 C1 00 D8 */	stfs f6, 0xd8(r1)
/* 8015B474 001583D4  D0 A1 00 DC */	stfs f5, 0xdc(r1)
/* 8015B478 001583D8  D0 81 00 E0 */	stfs f4, 0xe0(r1)
/* 8015B47C 001583DC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8015B480 001583E0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8015B484 001583E4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8015B488 001583E8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8015B48C 001583EC  48 1B 5D D9 */	bl Transform__11CQuaternionCFRC9CVector3f
/* 8015B490 001583F0  38 61 00 50 */	addi r3, r1, 0x50
/* 8015B494 001583F4  38 81 00 44 */	addi r4, r1, 0x44
/* 8015B498 001583F8  48 1B 89 39 */	bl __ct__11CUnitVectorFRC9CVector3f
/* 8015B49C 001583FC  7C 65 1B 78 */	mr r5, r3
/* 8015B4A0 00158400  38 61 00 68 */	addi r3, r1, 0x68
/* 8015B4A4 00158404  38 81 00 5C */	addi r4, r1, 0x5c
/* 8015B4A8 00158408  38 C1 00 0C */	addi r6, r1, 0xc
/* 8015B4AC 0015840C  48 1B 61 E9 */	bl LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
/* 8015B4B0 00158410  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 8015B4B4 00158414  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8015B4B8 00158418  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8015B4BC 0015841C  7C 85 23 78 */	mr r5, r4
/* 8015B4C0 00158420  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8015B4C4 00158424  38 61 00 24 */	addi r3, r1, 0x24
/* 8015B4C8 00158428  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8015B4CC 0015842C  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 8015B4D0 00158430  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 8015B4D4 00158434  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 8015B4D8 00158438  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8015B4DC 0015843C  48 1B 5C C5 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8015B4E0 00158440  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8015B4E4 00158444  38 61 01 48 */	addi r3, r1, 0x148
/* 8015B4E8 00158448  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 8015B4EC 0015844C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8015B4F0 00158450  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8015B4F4 00158454  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8015B4F8 00158458  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8015B4FC 0015845C  90 C1 00 C8 */	stw r6, 0xc8(r1)
/* 8015B500 00158460  90 A1 00 CC */	stw r5, 0xcc(r1)
/* 8015B504 00158464  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8015B508 00158468  48 1B 6B 85 */	bl BuildTransform__11CQuaternionCFv
/* 8015B50C 0015846C  C3 81 01 64 */	lfs f28, 0x164(r1)
/* 8015B510 00158470  38 61 01 24 */	addi r3, r1, 0x124
/* 8015B514 00158474  C3 A1 01 58 */	lfs f29, 0x158(r1)
/* 8015B518 00158478  38 9F 00 50 */	addi r4, r31, 0x50
/* 8015B51C 0015847C  C3 C1 01 4C */	lfs f30, 0x14c(r1)
/* 8015B520 00158480  48 1B 6B 6D */	bl BuildTransform__11CQuaternionCFv
/* 8015B524 00158484  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 8015B528 00158488  80 6D A1 18 */	lwz r3, gpTweakPlayer@sda21(r13)
/* 8015B52C 0015848C  EC 00 07 72 */	fmuls f0, f0, f29
/* 8015B530 00158490  C0 21 01 28 */	lfs f1, 0x128(r1)
/* 8015B534 00158494  C0 63 01 38 */	lfs f3, 0x138(r3)
/* 8015B538 00158498  C0 41 01 40 */	lfs f2, 0x140(r1)
/* 8015B53C 0015849C  EC 21 07 BA */	fmadds f1, f1, f30, f0
/* 8015B540 001584A0  C0 82 9E BC */	lfs f4, lbl_805ABBDC@sda21(r2)
/* 8015B544 001584A4  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 8015B548 001584A8  C8 02 9E C0 */	lfd f0, lbl_805ABBE0@sda21(r2)
/* 8015B54C 001584AC  EC 22 0F 3A */	fmadds f1, f2, f28, f1
/* 8015B550 001584B0  EF C4 00 F2 */	fmuls f30, f4, f3
/* 8015B554 001584B4  FC 40 0A 10 */	fabs f2, f1
/* 8015B558 001584B8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015B55C 001584BC  40 81 00 14 */	ble lbl_8015B570
/* 8015B560 001584C0  C0 02 9E C8 */	lfs f0, lbl_805ABBE8@sda21(r2)
/* 8015B564 001584C4  C0 42 9E AC */	lfs f2, lbl_805ABBCC@sda21(r2)
/* 8015B568 001584C8  FC 01 00 AE */	fsel f0, f1, f2, f0
/* 8015B56C 001584CC  EC 22 00 32 */	fmuls f1, f2, f0
lbl_8015B570:
/* 8015B570 001584D0  48 23 96 BD */	bl acos
/* 8015B574 001584D4  FC 40 08 18 */	frsp f2, f1
/* 8015B578 001584D8  C0 22 9E CC */	lfs f1, lbl_805ABBEC@sda21(r2)
/* 8015B57C 001584DC  C0 02 9E B0 */	lfs f0, lbl_805ABBD0@sda21(r2)
/* 8015B580 001584E0  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8015B584 001584E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015B588 001584E8  40 81 00 08 */	ble lbl_8015B590
/* 8015B58C 001584EC  EC 1E 10 24 */	fdivs f0, f30, f2
lbl_8015B590:
/* 8015B590 001584F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8015B594 001584F4  38 81 00 08 */	addi r4, r1, 8
/* 8015B598 001584F8  38 6D 8C A8 */	addi r3, r13, lbl_805A7868@sda21
/* 8015B59C 001584FC  38 AD 8C AC */	addi r5, r13, lbl_805A786C@sda21
/* 8015B5A0 00158500  D0 01 00 08 */	stfs f0, 8(r1)
/* 8015B5A4 00158504  4B EB 0D 11 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8015B5A8 00158508  C0 23 00 00 */	lfs f1, 0(r3)
/* 8015B5AC 0015850C  38 61 00 34 */	addi r3, r1, 0x34
/* 8015B5B0 00158510  38 9F 00 50 */	addi r4, r31, 0x50
/* 8015B5B4 00158514  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 8015B5B8 00158518  48 1B 60 01 */	bl SlerpLocal__11CQuaternionFRC11CQuaternionRC11CQuaternionf
/* 8015B5BC 0015851C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8015B5C0 00158520  80 81 00 38 */	lwz r4, 0x38(r1)
/* 8015B5C4 00158524  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8015B5C8 00158528  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8015B5CC 0015852C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8015B5D0 00158530  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 8015B5D4 00158534  90 61 00 CC */	stw r3, 0xcc(r1)
/* 8015B5D8 00158538  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8015B5DC 0015853C  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8015B5E0 00158540  80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 8015B5E4 00158544  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8015B5E8 00158548  90 7F 00 54 */	stw r3, 0x54(r31)
/* 8015B5EC 0015854C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8015B5F0 00158550  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 8015B5F4 00158554  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8015B5F8 00158558  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8015B5FC 0015855C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8015B600 00158560  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8015B604 00158564  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 8015B608 00158568  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8015B60C 0015856C  D0 1F 00 68 */	stfs f0, 0x68(r31)
lbl_8015B610:
/* 8015B610 00158570  E3 E1 02 08 */	psq_l f31, 520(r1), 0, qr0
/* 8015B614 00158574  CB E1 02 00 */	lfd f31, 0x200(r1)
/* 8015B618 00158578  E3 C1 01 F8 */	psq_l f30, 504(r1), 0, qr0
/* 8015B61C 0015857C  CB C1 01 F0 */	lfd f30, 0x1f0(r1)
/* 8015B620 00158580  E3 A1 01 E8 */	psq_l f29, 488(r1), 0, qr0
/* 8015B624 00158584  CB A1 01 E0 */	lfd f29, 0x1e0(r1)
/* 8015B628 00158588  E3 81 01 D8 */	psq_l f28, 472(r1), 0, qr0
/* 8015B62C 0015858C  CB 81 01 D0 */	lfd f28, 0x1d0(r1)
/* 8015B630 00158590  83 E1 01 CC */	lwz r31, 0x1cc(r1)
/* 8015B634 00158594  83 C1 01 C8 */	lwz r30, 0x1c8(r1)
/* 8015B638 00158598  83 A1 01 C4 */	lwz r29, 0x1c4(r1)
/* 8015B63C 0015859C  80 01 02 14 */	lwz r0, 0x214(r1)
/* 8015B640 001585A0  83 81 01 C0 */	lwz r28, 0x1c0(r1)
/* 8015B644 001585A4  7C 08 03 A6 */	mtlr r0
/* 8015B648 001585A8  38 21 02 10 */	addi r1, r1, 0x210
/* 8015B64C 001585AC  4E 80 00 20 */	blr 

.global __ct__20CSamusFaceReflectionFRC13CStateManager
__ct__20CSamusFaceReflectionFRC13CStateManager:
/* 8015B650 001585B0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8015B654 001585B4  7C 08 02 A6 */	mflr r0
/* 8015B658 001585B8  80 82 9E A0 */	lwz r4, lbl_805ABBC0@sda21(r2)
/* 8015B65C 001585BC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8015B660 001585C0  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8015B664 001585C4  7C 7F 1B 78 */	mr r31, r3
/* 8015B668 001585C8  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 8015B66C 001585CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8015B670 001585D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8015B674 001585D4  7D 89 03 A6 */	mtctr r12
/* 8015B678 001585D8  4E 80 04 21 */	bctrl 
/* 8015B67C 001585DC  80 83 00 04 */	lwz r4, 4(r3)
/* 8015B680 001585E0  38 A0 00 01 */	li r5, 1
/* 8015B684 001585E4  C0 02 9E AC */	lfs f0, lbl_805ABBCC@sda21(r2)
/* 8015B688 001585E8  38 00 00 00 */	li r0, 0
/* 8015B68C 001585EC  80 C2 83 F0 */	lwz r6, lbl_805AA110@sda21(r2)
/* 8015B690 001585F0  38 61 00 58 */	addi r3, r1, 0x58
/* 8015B694 001585F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8015B698 001585F8  38 81 00 14 */	addi r4, r1, 0x14
/* 8015B69C 001585FC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8015B6A0 00158600  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8015B6A4 00158604  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8015B6A8 00158608  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8015B6AC 0015860C  98 A1 00 28 */	stb r5, 0x28(r1)
/* 8015B6B0 00158610  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8015B6B4 00158614  4B FB B4 A1 */	bl __ct__10CModelDataFRC8CAnimRes
/* 8015B6B8 00158618  7F E3 FB 78 */	mr r3, r31
/* 8015B6BC 0015861C  38 81 00 58 */	addi r4, r1, 0x58
/* 8015B6C0 00158620  4B EB D6 CD */	bl __ct__10CModelDataFRC10CModelData
/* 8015B6C4 00158624  38 61 00 58 */	addi r3, r1, 0x58
/* 8015B6C8 00158628  38 80 FF FF */	li r4, -1
/* 8015B6CC 0015862C  4B FB B3 81 */	bl __dt__10CModelDataFv
/* 8015B6D0 00158630  3C 80 80 3D */	lis r4, lbl_803D0340@ha
/* 8015B6D4 00158634  38 60 02 E0 */	li r3, 0x2e0
/* 8015B6D8 00158638  38 84 03 40 */	addi r4, r4, lbl_803D0340@l
/* 8015B6DC 0015863C  38 A0 00 00 */	li r5, 0
/* 8015B6E0 00158640  38 84 00 0E */	addi r4, r4, 0xe
/* 8015B6E4 00158644  48 1B A1 89 */	bl __nw__FUlPCcPCc
/* 8015B6E8 00158648  7C 60 1B 79 */	or. r0, r3, r3
/* 8015B6EC 0015864C  41 82 00 4C */	beq lbl_8015B738
/* 8015B6F0 00158650  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8015B6F4 00158654  C0 22 94 04 */	lfs f1, lbl_805AB124@sda21(r2)
/* 8015B6F8 00158658  38 E4 66 A0 */	addi r7, r4, skZero3f@l
/* 8015B6FC 0015865C  38 A1 00 08 */	addi r5, r1, 8
/* 8015B700 00158660  81 07 00 00 */	lwz r8, 0(r7)
/* 8015B704 00158664  38 80 00 08 */	li r4, 8
/* 8015B708 00158668  81 67 00 04 */	lwz r11, 4(r7)
/* 8015B70C 0015866C  38 C0 00 04 */	li r6, 4
/* 8015B710 00158670  80 07 00 08 */	lwz r0, 8(r7)
/* 8015B714 00158674  38 E0 00 04 */	li r7, 4
/* 8015B718 00158678  91 01 00 08 */	stw r8, 8(r1)
/* 8015B71C 0015867C  39 00 00 00 */	li r8, 0
/* 8015B720 00158680  39 20 00 00 */	li r9, 0
/* 8015B724 00158684  39 40 00 00 */	li r10, 0
/* 8015B728 00158688  91 61 00 0C */	stw r11, 0xc(r1)
/* 8015B72C 0015868C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8015B730 00158690  4B FA 9A 9D */	bl __ct__12CActorLightsFUi9CVector3fiif
/* 8015B734 00158694  7C 60 1B 78 */	mr r0, r3
lbl_8015B738:
/* 8015B738 00158698  3C 60 80 5A */	lis r3, lbl_805A6660@ha
/* 8015B73C 0015869C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8015B740 001586A0  39 03 66 60 */	addi r8, r3, lbl_805A6660@l
/* 8015B744 001586A4  3C 60 80 5A */	lis r3, lbl_805A6724@ha
/* 8015B748 001586A8  C0 08 00 00 */	lfs f0, 0(r8)
/* 8015B74C 001586AC  38 E3 67 24 */	addi r7, r3, lbl_805A6724@l
/* 8015B750 001586B0  38 C0 00 00 */	li r6, 0
/* 8015B754 001586B4  38 60 00 01 */	li r3, 1
/* 8015B758 001586B8  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8015B75C 001586BC  38 00 FF FF */	li r0, -1
/* 8015B760 001586C0  C0 02 9E AC */	lfs f0, lbl_805ABBCC@sda21(r2)
/* 8015B764 001586C4  38 81 00 30 */	addi r4, r1, 0x30
/* 8015B768 001586C8  C0 28 00 04 */	lfs f1, 4(r8)
/* 8015B76C 001586CC  38 A0 00 00 */	li r5, 0
/* 8015B770 001586D0  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 8015B774 001586D4  C0 28 00 08 */	lfs f1, 8(r8)
/* 8015B778 001586D8  D0 3F 00 58 */	stfs f1, 0x58(r31)
/* 8015B77C 001586DC  C0 28 00 0C */	lfs f1, 0xc(r8)
/* 8015B780 001586E0  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 8015B784 001586E4  C0 27 00 00 */	lfs f1, 0(r7)
/* 8015B788 001586E8  D0 3F 00 60 */	stfs f1, 0x60(r31)
/* 8015B78C 001586EC  C0 27 00 04 */	lfs f1, 4(r7)
/* 8015B790 001586F0  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 8015B794 001586F4  C0 27 00 08 */	lfs f1, 8(r7)
/* 8015B798 001586F8  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 8015B79C 001586FC  90 DF 00 6C */	stw r6, 0x6c(r31)
/* 8015B7A0 00158700  98 7F 00 70 */	stb r3, 0x70(r31)
/* 8015B7A4 00158704  90 C1 00 30 */	stw r6, 0x30(r1)
/* 8015B7A8 00158708  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015B7AC 0015870C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8015B7B0 00158710  98 61 00 3C */	stb r3, 0x3c(r1)
/* 8015B7B4 00158714  90 C1 00 40 */	stw r6, 0x40(r1)
/* 8015B7B8 00158718  90 C1 00 44 */	stw r6, 0x44(r1)
/* 8015B7BC 0015871C  98 C1 00 48 */	stb r6, 0x48(r1)
/* 8015B7C0 00158720  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 8015B7C4 00158724  90 C1 00 50 */	stw r6, 0x50(r1)
/* 8015B7C8 00158728  90 C1 00 54 */	stw r6, 0x54(r1)
/* 8015B7CC 0015872C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8015B7D0 00158730  4B ED 15 AD */	bl SetAnimation__9CAnimDataFRC18CAnimPlaybackParmsb
/* 8015B7D4 00158734  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8015B7D8 00158738  7F E3 FB 78 */	mr r3, r31
/* 8015B7DC 0015873C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8015B7E0 00158740  7C 08 03 A6 */	mtlr r0
/* 8015B7E4 00158744  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8015B7E8 00158748  4E 80 00 20 */	blr 

.global __sinit_CSamusFaceReflection_cpp
__sinit_CSamusFaceReflection_cpp:
/* 8015B7EC 0015874C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8015B7F0 00158750  7C 08 02 A6 */	mflr r0
/* 8015B7F4 00158754  C0 22 9E B0 */	lfs f1, lbl_805ABBD0@sda21(r2)
/* 8015B7F8 00158758  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8015B7FC 0015875C  38 61 00 14 */	addi r3, r1, 0x14
/* 8015B800 00158760  C0 02 9E BC */	lfs f0, lbl_805ABBDC@sda21(r2)
/* 8015B804 00158764  38 81 00 08 */	addi r4, r1, 8
/* 8015B808 00158768  D0 21 00 08 */	stfs f1, 8(r1)
/* 8015B80C 0015876C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8015B810 00158770  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8015B814 00158774  48 1B 79 2D */	bl Translate__12CTransform4fFRC9CVector3f
/* 8015B818 00158778  C0 22 9E D0 */	lfs f1, lbl_805ABBF0@sda21(r2)
/* 8015B81C 0015877C  38 61 00 44 */	addi r3, r1, 0x44
/* 8015B820 00158780  48 1B 7A 21 */	bl Scale__12CTransform4fFf
/* 8015B824 00158784  38 61 00 74 */	addi r3, r1, 0x74
/* 8015B828 00158788  38 81 00 44 */	addi r4, r1, 0x44
/* 8015B82C 0015878C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8015B830 00158790  48 1B 71 21 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8015B834 00158794  3C 60 80 47 */	lis r3, lbl_8046C7A0@ha
/* 8015B838 00158798  38 81 00 74 */	addi r4, r1, 0x74
/* 8015B83C 0015879C  38 63 C7 A0 */	addi r3, r3, lbl_8046C7A0@l
/* 8015B840 001587A0  48 1B 73 35 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8015B844 001587A4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8015B848 001587A8  7C 08 03 A6 */	mtlr r0
/* 8015B84C 001587AC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8015B850 001587B0  4E 80 00 20 */	blr