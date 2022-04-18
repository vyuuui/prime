.include "macros.inc"

.section .data

.global lbl_803E3AC8
lbl_803E3AC8:
	# ROM: 0x3E0AC8
	.4byte 0
	.4byte 0
	.4byte sub_80169a70
	.4byte 0

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global FScannableObjectInfoFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
FScannableObjectInfoFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 8016991C 0016687C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80169920 00166880  7C 08 02 A6 */	mflr r0
/* 80169924 00166884  3C C0 80 3D */	lis r6, lbl_803D0490@ha
/* 80169928 00166888  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016992C 0016688C  38 C6 04 90 */	addi r6, r6, lbl_803D0490@l
/* 80169930 00166890  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80169934 00166894  7C BF 2B 78 */	mr r31, r5
/* 80169938 00166898  38 A0 00 00 */	li r5, 0
/* 8016993C 0016689C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80169940 001668A0  7C 9E 23 78 */	mr r30, r4
/* 80169944 001668A4  38 86 00 3C */	addi r4, r6, 0x3c
/* 80169948 001668A8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8016994C 001668AC  7C 7D 1B 78 */	mr r29, r3
/* 80169950 001668B0  38 60 00 88 */	li r3, 0x88
/* 80169954 001668B4  48 1A BF 19 */	bl __nw__FUlPCcPCc
/* 80169958 001668B8  7C 64 1B 79 */	or. r4, r3, r3
/* 8016995C 001668BC  41 82 00 14 */	beq lbl_80169970
/* 80169960 001668C0  80 BE 00 04 */	lwz r5, 4(r30)
/* 80169964 001668C4  7F E4 FB 78 */	mr r4, r31
/* 80169968 001668C8  48 00 04 71 */	bl __ct__20CScannableObjectInfoFR12CInputStreamUi
/* 8016996C 001668CC  7C 64 1B 78 */	mr r4, r3
lbl_80169970:
/* 80169970 001668D0  7C 04 00 D0 */	neg r0, r4
/* 80169974 001668D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80169978 001668D8  7C 00 23 78 */	or r0, r0, r4
/* 8016997C 001668DC  38 61 00 10 */	addi r3, r1, 0x10
/* 80169980 001668E0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80169984 001668E4  38 81 00 08 */	addi r4, r1, 8
/* 80169988 001668E8  98 01 00 08 */	stb r0, 8(r1)
/* 8016998C 001668EC  48 00 01 D1 */	bl "GetIObjObjectFor__30TToken<20CScannableObjectInfo>FRCQ24rstl32auto_ptr<20CScannableObjectInfo>"
/* 80169990 001668F0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80169994 001668F4  38 00 00 00 */	li r0, 0
/* 80169998 001668F8  98 01 00 10 */	stb r0, 0x10(r1)
/* 8016999C 001668FC  7C 03 00 D0 */	neg r0, r3
/* 801699A0 00166900  7C 00 1B 78 */	or r0, r0, r3
/* 801699A4 00166904  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801699A8 00166908  98 1D 00 00 */	stb r0, 0(r29)
/* 801699AC 0016690C  90 7D 00 04 */	stw r3, 4(r29)
/* 801699B0 00166910  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801699B4 00166914  28 00 00 00 */	cmplwi r0, 0
/* 801699B8 00166918  41 82 00 24 */	beq lbl_801699DC
/* 801699BC 0016691C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801699C0 00166920  28 03 00 00 */	cmplwi r3, 0
/* 801699C4 00166924  41 82 00 18 */	beq lbl_801699DC
/* 801699C8 00166928  81 83 00 00 */	lwz r12, 0(r3)
/* 801699CC 0016692C  38 80 00 01 */	li r4, 1
/* 801699D0 00166930  81 8C 00 08 */	lwz r12, 8(r12)
/* 801699D4 00166934  7D 89 03 A6 */	mtctr r12
/* 801699D8 00166938  4E 80 04 21 */	bctrl 
lbl_801699DC:
/* 801699DC 0016693C  88 01 00 08 */	lbz r0, 8(r1)
/* 801699E0 00166940  28 00 00 00 */	cmplwi r0, 0
/* 801699E4 00166944  41 82 00 70 */	beq lbl_80169A54
/* 801699E8 00166948  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801699EC 0016694C  28 03 00 00 */	cmplwi r3, 0
/* 801699F0 00166950  41 82 00 64 */	beq lbl_80169A54
/* 801699F4 00166954  34 03 00 14 */	addic. r0, r3, 0x14
/* 801699F8 00166958  41 82 00 58 */	beq lbl_80169A50
/* 801699FC 0016695C  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80169A00 00166960  38 80 00 00 */	li r4, 0
/* 80169A04 00166964  2C 06 00 00 */	cmpwi r6, 0
/* 80169A08 00166968  40 81 00 40 */	ble lbl_80169A48
/* 80169A0C 0016696C  2C 06 00 08 */	cmpwi r6, 8
/* 80169A10 00166970  38 A6 FF F8 */	addi r5, r6, -8
/* 80169A14 00166974  40 81 00 20 */	ble lbl_80169A34
/* 80169A18 00166978  38 05 00 07 */	addi r0, r5, 7
/* 80169A1C 0016697C  54 00 E8 FE */	srwi r0, r0, 3
/* 80169A20 00166980  7C 09 03 A6 */	mtctr r0
/* 80169A24 00166984  2C 05 00 00 */	cmpwi r5, 0
/* 80169A28 00166988  40 81 00 0C */	ble lbl_80169A34
lbl_80169A2C:
/* 80169A2C 0016698C  38 84 00 08 */	addi r4, r4, 8
/* 80169A30 00166990  42 00 FF FC */	bdnz lbl_80169A2C
lbl_80169A34:
/* 80169A34 00166994  7C 04 30 50 */	subf r0, r4, r6
/* 80169A38 00166998  7C 09 03 A6 */	mtctr r0
/* 80169A3C 0016699C  7C 04 30 00 */	cmpw r4, r6
/* 80169A40 001669A0  40 80 00 08 */	bge lbl_80169A48
lbl_80169A44:
/* 80169A44 001669A4  42 00 00 00 */	bdnz lbl_80169A44
lbl_80169A48:
/* 80169A48 001669A8  38 00 00 00 */	li r0, 0
/* 80169A4C 001669AC  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80169A50:
/* 80169A50 001669B0  48 1A BE E1 */	bl Free__7CMemoryFPCv
lbl_80169A54:
/* 80169A54 001669B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80169A58 001669B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80169A5C 001669BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80169A60 001669C0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80169A64 001669C4  7C 08 03 A6 */	mtlr r0
/* 80169A68 001669C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80169A6C 001669CC  4E 80 00 20 */	blr 

.global sub_80169a70
sub_80169a70:
/* 80169A70 001669D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80169A74 001669D4  7C 08 02 A6 */	mflr r0
/* 80169A78 001669D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80169A7C 001669DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80169A80 001669E0  7C 9F 23 78 */	mr r31, r4
/* 80169A84 001669E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80169A88 001669E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80169A8C 001669EC  41 82 00 B4 */	beq lbl_80169B40
/* 80169A90 001669F0  3C 60 80 3E */	lis r3, lbl_803E3AC8@ha
/* 80169A94 001669F4  38 03 3A C8 */	addi r0, r3, lbl_803E3AC8@l
/* 80169A98 001669F8  90 1E 00 00 */	stw r0, 0(r30)
/* 80169A9C 001669FC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80169AA0 00166A00  28 03 00 00 */	cmplwi r3, 0
/* 80169AA4 00166A04  41 82 00 68 */	beq lbl_80169B0C
/* 80169AA8 00166A08  41 82 00 64 */	beq lbl_80169B0C
/* 80169AAC 00166A0C  34 03 00 14 */	addic. r0, r3, 0x14
/* 80169AB0 00166A10  41 82 00 58 */	beq lbl_80169B08
/* 80169AB4 00166A14  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80169AB8 00166A18  38 80 00 00 */	li r4, 0
/* 80169ABC 00166A1C  2C 06 00 00 */	cmpwi r6, 0
/* 80169AC0 00166A20  40 81 00 40 */	ble lbl_80169B00
/* 80169AC4 00166A24  2C 06 00 08 */	cmpwi r6, 8
/* 80169AC8 00166A28  38 A6 FF F8 */	addi r5, r6, -8
/* 80169ACC 00166A2C  40 81 00 20 */	ble lbl_80169AEC
/* 80169AD0 00166A30  38 05 00 07 */	addi r0, r5, 7
/* 80169AD4 00166A34  54 00 E8 FE */	srwi r0, r0, 3
/* 80169AD8 00166A38  7C 09 03 A6 */	mtctr r0
/* 80169ADC 00166A3C  2C 05 00 00 */	cmpwi r5, 0
/* 80169AE0 00166A40  40 81 00 0C */	ble lbl_80169AEC
lbl_80169AE4:
/* 80169AE4 00166A44  38 84 00 08 */	addi r4, r4, 8
/* 80169AE8 00166A48  42 00 FF FC */	bdnz lbl_80169AE4
lbl_80169AEC:
/* 80169AEC 00166A4C  7C 04 30 50 */	subf r0, r4, r6
/* 80169AF0 00166A50  7C 09 03 A6 */	mtctr r0
/* 80169AF4 00166A54  7C 04 30 00 */	cmpw r4, r6
/* 80169AF8 00166A58  40 80 00 08 */	bge lbl_80169B00
lbl_80169AFC:
/* 80169AFC 00166A5C  42 00 00 00 */	bdnz lbl_80169AFC
lbl_80169B00:
/* 80169B00 00166A60  38 00 00 00 */	li r0, 0
/* 80169B04 00166A64  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80169B08:
/* 80169B08 00166A68  48 1A BE 29 */	bl Free__7CMemoryFPCv
lbl_80169B0C:
/* 80169B0C 00166A6C  28 1E 00 00 */	cmplwi r30, 0
/* 80169B10 00166A70  41 82 00 20 */	beq lbl_80169B30
/* 80169B14 00166A74  3C 60 80 3E */	lis r3, lbl_803D8D78@ha
/* 80169B18 00166A78  38 03 8D 78 */	addi r0, r3, lbl_803D8D78@l
/* 80169B1C 00166A7C  90 1E 00 00 */	stw r0, 0(r30)
/* 80169B20 00166A80  41 82 00 10 */	beq lbl_80169B30
/* 80169B24 00166A84  3C 60 80 3E */	lis r3, lbl_803D8D6C@ha
/* 80169B28 00166A88  38 03 8D 6C */	addi r0, r3, lbl_803D8D6C@l
/* 80169B2C 00166A8C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80169B30:
/* 80169B30 00166A90  7F E0 07 35 */	extsh. r0, r31
/* 80169B34 00166A94  40 81 00 0C */	ble lbl_80169B40
/* 80169B38 00166A98  7F C3 F3 78 */	mr r3, r30
/* 80169B3C 00166A9C  48 1A BD F5 */	bl Free__7CMemoryFPCv
lbl_80169B40:
/* 80169B40 00166AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80169B44 00166AA4  7F C3 F3 78 */	mr r3, r30
/* 80169B48 00166AA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80169B4C 00166AAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80169B50 00166AB0  7C 08 03 A6 */	mtlr r0
/* 80169B54 00166AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80169B58 00166AB8  4E 80 00 20 */	blr 

.global "GetIObjObjectFor__30TToken<20CScannableObjectInfo>FRCQ24rstl32auto_ptr<20CScannableObjectInfo>"
"GetIObjObjectFor__30TToken<20CScannableObjectInfo>FRCQ24rstl32auto_ptr<20CScannableObjectInfo>":
/* 80169B5C 00166ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80169B60 00166AC0  7C 08 02 A6 */	mflr r0
/* 80169B64 00166AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80169B68 00166AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80169B6C 00166ACC  7C 7F 1B 78 */	mr r31, r3
/* 80169B70 00166AD0  48 00 00 19 */	bl sub_80169b88
/* 80169B74 00166AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80169B78 00166AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80169B7C 00166ADC  7C 08 03 A6 */	mtlr r0
/* 80169B80 00166AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80169B84 00166AE4  4E 80 00 20 */	blr 

.global sub_80169b88
sub_80169b88:
/* 80169B88 00166AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80169B8C 00166AEC  7C 08 02 A6 */	mflr r0
/* 80169B90 00166AF0  3C A0 80 3D */	lis r5, lbl_803D0490@ha
/* 80169B94 00166AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80169B98 00166AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80169B9C 00166AFC  7C 9F 23 78 */	mr r31, r4
/* 80169BA0 00166B00  93 C1 00 08 */	stw r30, 8(r1)
/* 80169BA4 00166B04  7C 7E 1B 78 */	mr r30, r3
/* 80169BA8 00166B08  38 65 04 90 */	addi r3, r5, lbl_803D0490@l
/* 80169BAC 00166B0C  38 A0 00 00 */	li r5, 0
/* 80169BB0 00166B10  38 83 00 3C */	addi r4, r3, 0x3c
/* 80169BB4 00166B14  38 60 00 08 */	li r3, 8
/* 80169BB8 00166B18  48 1A BC B5 */	bl __nw__FUlPCcPCc
/* 80169BBC 00166B1C  28 03 00 00 */	cmplwi r3, 0
/* 80169BC0 00166B20  41 82 00 38 */	beq lbl_80169BF8
/* 80169BC4 00166B24  3C 80 80 3E */	lis r4, lbl_803D8D6C@ha
/* 80169BC8 00166B28  3C A0 80 3E */	lis r5, lbl_803D8D78@ha
/* 80169BCC 00166B2C  38 04 8D 6C */	addi r0, r4, lbl_803D8D6C@l
/* 80169BD0 00166B30  3C 80 80 3E */	lis r4, lbl_803E3AC8@ha
/* 80169BD4 00166B34  90 03 00 00 */	stw r0, 0(r3)
/* 80169BD8 00166B38  38 C5 8D 78 */	addi r6, r5, lbl_803D8D78@l
/* 80169BDC 00166B3C  38 A0 00 00 */	li r5, 0
/* 80169BE0 00166B40  38 04 3A C8 */	addi r0, r4, lbl_803E3AC8@l
/* 80169BE4 00166B44  90 C3 00 00 */	stw r6, 0(r3)
/* 80169BE8 00166B48  98 BF 00 00 */	stb r5, 0(r31)
/* 80169BEC 00166B4C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80169BF0 00166B50  90 83 00 04 */	stw r4, 4(r3)
/* 80169BF4 00166B54  90 03 00 00 */	stw r0, 0(r3)
lbl_80169BF8:
/* 80169BF8 00166B58  7C 03 00 D0 */	neg r0, r3
/* 80169BFC 00166B5C  7C 00 1B 78 */	or r0, r0, r3
/* 80169C00 00166B60  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80169C04 00166B64  98 1E 00 00 */	stb r0, 0(r30)
/* 80169C08 00166B68  90 7E 00 04 */	stw r3, 4(r30)
/* 80169C0C 00166B6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80169C10 00166B70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80169C14 00166B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80169C18 00166B78  7C 08 03 A6 */	mtlr r0
/* 80169C1C 00166B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80169C20 00166B80  4E 80 00 20 */	blr 

.global LoadVersion4or5__20CScannableObjectInfoFR12CInputStreamUi
LoadVersion4or5__20CScannableObjectInfoFR12CInputStreamUi:
/* 80169C24 00166B84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80169C28 00166B88  7C 08 02 A6 */	mflr r0
/* 80169C2C 00166B8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80169C30 00166B90  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80169C34 00166B94  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80169C38 00166B98  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 80169C3C 00166B9C  7C 9C 23 78 */	mr r28, r4
/* 80169C40 00166BA0  7C 7B 1B 78 */	mr r27, r3
/* 80169C44 00166BA4  7C BD 2B 78 */	mr r29, r5
/* 80169C48 00166BA8  7F 83 E3 78 */	mr r3, r28
/* 80169C4C 00166BAC  48 1D 50 39 */	bl ReadLong__12CInputStreamFv
/* 80169C50 00166BB0  7F 83 E3 78 */	mr r3, r28
/* 80169C54 00166BB4  48 1D 50 31 */	bl ReadLong__12CInputStreamFv
/* 80169C58 00166BB8  7F 83 E3 78 */	mr r3, r28
/* 80169C5C 00166BBC  48 1D 50 29 */	bl ReadLong__12CInputStreamFv
/* 80169C60 00166BC0  28 1D 00 04 */	cmplwi r29, 4
/* 80169C64 00166BC4  90 7B 00 04 */	stw r3, 4(r27)
/* 80169C68 00166BC8  40 80 00 14 */	bge lbl_80169C7C
/* 80169C6C 00166BCC  7F 83 E3 78 */	mr r3, r28
/* 80169C70 00166BD0  48 1D 4F B9 */	bl ReadFloat__12CInputStreamFv
/* 80169C74 00166BD4  D0 3B 00 08 */	stfs f1, 8(r27)
/* 80169C78 00166BD8  48 00 00 20 */	b lbl_80169C98
lbl_80169C7C:
/* 80169C7C 00166BDC  7F 83 E3 78 */	mr r3, r28
/* 80169C80 00166BE0  48 1D 50 05 */	bl ReadLong__12CInputStreamFv
/* 80169C84 00166BE4  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 80169C88 00166BE8  54 60 10 3A */	slwi r0, r3, 2
/* 80169C8C 00166BEC  7C 64 02 14 */	add r3, r4, r0
/* 80169C90 00166BF0  C0 03 02 C8 */	lfs f0, 0x2c8(r3)
/* 80169C94 00166BF4  D0 1B 00 08 */	stfs f0, 8(r27)
lbl_80169C98:
/* 80169C98 00166BF8  7F 83 E3 78 */	mr r3, r28
/* 80169C9C 00166BFC  48 1D 4F E9 */	bl ReadLong__12CInputStreamFv
/* 80169CA0 00166C00  28 1D 00 04 */	cmplwi r29, 4
/* 80169CA4 00166C04  90 7B 00 0C */	stw r3, 0xc(r27)
/* 80169CA8 00166C08  40 81 00 10 */	ble lbl_80169CB8
/* 80169CAC 00166C0C  7F 83 E3 78 */	mr r3, r28
/* 80169CB0 00166C10  48 1D 50 2D */	bl ReadBool__12CInputStreamFv
/* 80169CB4 00166C14  98 7B 00 10 */	stb r3, 0x10(r27)
lbl_80169CB8:
/* 80169CB8 00166C18  3B C0 00 00 */	li r30, 0
/* 80169CBC 00166C1C  3B FB 00 18 */	addi r31, r27, 0x18
lbl_80169CC0:
/* 80169CC0 00166C20  7F 83 E3 78 */	mr r3, r28
/* 80169CC4 00166C24  48 1D 4F C1 */	bl ReadLong__12CInputStreamFv
/* 80169CC8 00166C28  7C 7A 1B 78 */	mr r26, r3
/* 80169CCC 00166C2C  7F 83 E3 78 */	mr r3, r28
/* 80169CD0 00166C30  48 1D 4F 59 */	bl ReadFloat__12CInputStreamFv
/* 80169CD4 00166C34  FF E0 08 90 */	fmr f31, f1
/* 80169CD8 00166C38  7F 83 E3 78 */	mr r3, r28
/* 80169CDC 00166C3C  48 1D 4F A9 */	bl ReadLong__12CInputStreamFv
/* 80169CE0 00166C40  28 1D 00 01 */	cmplwi r29, 1
/* 80169CE4 00166C44  90 61 00 20 */	stw r3, 0x20(r1)
/* 80169CE8 00166C48  40 82 00 18 */	bne lbl_80169D00
/* 80169CEC 00166C4C  38 61 00 08 */	addi r3, r1, 8
/* 80169CF0 00166C50  38 80 00 00 */	li r4, 0
/* 80169CF4 00166C54  38 A0 00 00 */	li r5, 0
/* 80169CF8 00166C58  48 1A A6 55 */	bl __ct__9CVector2iFii
/* 80169CFC 00166C5C  48 00 00 20 */	b lbl_80169D1C
lbl_80169D00:
/* 80169D00 00166C60  7F 83 E3 78 */	mr r3, r28
/* 80169D04 00166C64  48 1D 4F 81 */	bl ReadLong__12CInputStreamFv
/* 80169D08 00166C68  90 61 00 10 */	stw r3, 0x10(r1)
/* 80169D0C 00166C6C  7F 83 E3 78 */	mr r3, r28
/* 80169D10 00166C70  48 1D 4F 75 */	bl ReadLong__12CInputStreamFv
/* 80169D14 00166C74  90 61 00 14 */	stw r3, 0x14(r1)
/* 80169D18 00166C78  38 61 00 10 */	addi r3, r1, 0x10
lbl_80169D1C:
/* 80169D1C 00166C7C  80 83 00 00 */	lwz r4, 0(r3)
/* 80169D20 00166C80  28 1D 00 01 */	cmplwi r29, 1
/* 80169D24 00166C84  80 03 00 04 */	lwz r0, 4(r3)
/* 80169D28 00166C88  90 81 00 24 */	stw r4, 0x24(r1)
/* 80169D2C 00166C8C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80169D30 00166C90  40 82 00 0C */	bne lbl_80169D3C
/* 80169D34 00166C94  C0 22 A0 68 */	lfs f1, lbl_805ABD88@sda21(r2)
/* 80169D38 00166C98  48 00 00 0C */	b lbl_80169D44
lbl_80169D3C:
/* 80169D3C 00166C9C  7F 83 E3 78 */	mr r3, r28
/* 80169D40 00166CA0  48 1D 4E E9 */	bl ReadFloat__12CInputStreamFv
lbl_80169D44:
/* 80169D44 00166CA4  28 1D 00 03 */	cmplwi r29, 3
/* 80169D48 00166CA8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80169D4C 00166CAC  40 80 00 0C */	bge lbl_80169D58
/* 80169D50 00166CB0  C0 22 A0 68 */	lfs f1, lbl_805ABD88@sda21(r2)
/* 80169D54 00166CB4  48 00 00 0C */	b lbl_80169D60
lbl_80169D58:
/* 80169D58 00166CB8  7F 83 E3 78 */	mr r3, r28
/* 80169D5C 00166CBC  48 1D 4E CD */	bl ReadFloat__12CInputStreamFv
lbl_80169D60:
/* 80169D60 00166CC0  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 80169D64 00166CC4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80169D68 00166CC8  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80169D6C 00166CCC  7C 9F 02 15 */	add. r4, r31, r0
/* 80169D70 00166CD0  41 82 00 34 */	beq lbl_80169DA4
/* 80169D74 00166CD4  93 44 00 00 */	stw r26, 0(r4)
/* 80169D78 00166CD8  FC 00 08 18 */	frsp f0, f1
/* 80169D7C 00166CDC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80169D80 00166CE0  D3 E4 00 04 */	stfs f31, 4(r4)
/* 80169D84 00166CE4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80169D88 00166CE8  90 04 00 08 */	stw r0, 8(r4)
/* 80169D8C 00166CEC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80169D90 00166CF0  90 64 00 0C */	stw r3, 0xc(r4)
/* 80169D94 00166CF4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80169D98 00166CF8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80169D9C 00166CFC  D0 24 00 14 */	stfs f1, 0x14(r4)
/* 80169DA0 00166D00  D0 04 00 18 */	stfs f0, 0x18(r4)
lbl_80169DA4:
/* 80169DA4 00166D04  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 80169DA8 00166D08  3B DE 00 01 */	addi r30, r30, 1
/* 80169DAC 00166D0C  2C 1E 00 04 */	cmpwi r30, 4
/* 80169DB0 00166D10  38 03 00 01 */	addi r0, r3, 1
/* 80169DB4 00166D14  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80169DB8 00166D18  41 80 FF 08 */	blt lbl_80169CC0
/* 80169DBC 00166D1C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80169DC0 00166D20  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80169DC4 00166D24  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 80169DC8 00166D28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80169DCC 00166D2C  7C 08 03 A6 */	mtlr r0
/* 80169DD0 00166D30  38 21 00 60 */	addi r1, r1, 0x60
/* 80169DD4 00166D34  4E 80 00 20 */	blr 

.global __ct__20CScannableObjectInfoFR12CInputStreamUi
__ct__20CScannableObjectInfoFR12CInputStreamUi:
/* 80169DD8 00166D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80169DDC 00166D3C  7C 08 02 A6 */	mflr r0
/* 80169DE0 00166D40  C0 02 A0 68 */	lfs f0, lbl_805ABD88@sda21(r2)
/* 80169DE4 00166D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80169DE8 00166D48  38 00 00 00 */	li r0, 0
/* 80169DEC 00166D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80169DF0 00166D50  7C 7F 1B 78 */	mr r31, r3
/* 80169DF4 00166D54  93 C1 00 08 */	stw r30, 8(r1)
/* 80169DF8 00166D58  7C 9E 23 78 */	mr r30, r4
/* 80169DFC 00166D5C  90 A3 00 00 */	stw r5, 0(r3)
/* 80169E00 00166D60  38 60 FF FF */	li r3, -1
/* 80169E04 00166D64  90 7F 00 04 */	stw r3, 4(r31)
/* 80169E08 00166D68  7F C3 F3 78 */	mr r3, r30
/* 80169E0C 00166D6C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80169E10 00166D70  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80169E14 00166D74  98 1F 00 10 */	stb r0, 0x10(r31)
/* 80169E18 00166D78  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80169E1C 00166D7C  48 1D 4E 69 */	bl ReadLong__12CInputStreamFv
/* 80169E20 00166D80  7C 65 1B 78 */	mr r5, r3
/* 80169E24 00166D84  7F E3 FB 78 */	mr r3, r31
/* 80169E28 00166D88  7F C4 F3 78 */	mr r4, r30
/* 80169E2C 00166D8C  4B FF FD F9 */	bl LoadVersion4or5__20CScannableObjectInfoFR12CInputStreamUi
/* 80169E30 00166D90  38 BF 00 14 */	addi r5, r31, 0x14
/* 80169E34 00166D94  38 C0 00 00 */	li r6, 0
/* 80169E38 00166D98  38 80 00 00 */	li r4, 0
/* 80169E3C 00166D9C  48 00 00 20 */	b lbl_80169E5C
lbl_80169E40:
/* 80169E40 00166DA0  7C 65 22 14 */	add r3, r5, r4
/* 80169E44 00166DA4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80169E48 00166DA8  C0 23 00 08 */	lfs f1, 8(r3)
/* 80169E4C 00166DAC  38 84 00 1C */	addi r4, r4, 0x1c
/* 80169E50 00166DB0  38 C6 00 01 */	addi r6, r6, 1
/* 80169E54 00166DB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80169E58 00166DB8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80169E5C:
/* 80169E5C 00166DBC  80 05 00 00 */	lwz r0, 0(r5)
/* 80169E60 00166DC0  7C 06 00 00 */	cmpw r6, r0
/* 80169E64 00166DC4  41 80 FF DC */	blt lbl_80169E40
/* 80169E68 00166DC8  80 6D A1 38 */	lwz r3, gpTweakGui@sda21(r13)
/* 80169E6C 00166DCC  38 DF 00 14 */	addi r6, r31, 0x14
/* 80169E70 00166DD0  39 00 00 00 */	li r8, 0
/* 80169E74 00166DD4  38 A0 00 00 */	li r5, 0
/* 80169E78 00166DD8  C0 23 02 44 */	lfs f1, 0x244(r3)
/* 80169E7C 00166DDC  48 00 00 5C */	b lbl_80169ED8
lbl_80169E80:
/* 80169E80 00166DE0  7C 66 2A 14 */	add r3, r6, r5
/* 80169E84 00166DE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80169E88 00166DE8  2C 00 FF FF */	cmpwi r0, -1
/* 80169E8C 00166DEC  41 82 00 44 */	beq lbl_80169ED0
/* 80169E90 00166DF0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80169E94 00166DF4  1C 88 00 1C */	mulli r4, r8, 0x1c
/* 80169E98 00166DF8  7D 09 43 78 */	mr r9, r8
/* 80169E9C 00166DFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80169EA0 00166E00  38 FF 00 14 */	addi r7, r31, 0x14
/* 80169EA4 00166E04  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80169EA8 00166E08  48 00 00 1C */	b lbl_80169EC4
lbl_80169EAC:
/* 80169EAC 00166E0C  7C 67 22 14 */	add r3, r7, r4
/* 80169EB0 00166E10  38 84 00 1C */	addi r4, r4, 0x1c
/* 80169EB4 00166E14  C0 03 00 08 */	lfs f0, 8(r3)
/* 80169EB8 00166E18  39 29 00 01 */	addi r9, r9, 1
/* 80169EBC 00166E1C  EC 00 08 2A */	fadds f0, f0, f1
/* 80169EC0 00166E20  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80169EC4:
/* 80169EC4 00166E24  80 07 00 00 */	lwz r0, 0(r7)
/* 80169EC8 00166E28  7C 09 00 00 */	cmpw r9, r0
/* 80169ECC 00166E2C  41 80 FF E0 */	blt lbl_80169EAC
lbl_80169ED0:
/* 80169ED0 00166E30  38 A5 00 1C */	addi r5, r5, 0x1c
/* 80169ED4 00166E34  39 08 00 01 */	addi r8, r8, 1
lbl_80169ED8:
/* 80169ED8 00166E38  80 06 00 00 */	lwz r0, 0(r6)
/* 80169EDC 00166E3C  7C 08 00 00 */	cmpw r8, r0
/* 80169EE0 00166E40  41 80 FF A0 */	blt lbl_80169E80
/* 80169EE4 00166E44  39 1F 00 14 */	addi r8, r31, 0x14
/* 80169EE8 00166E48  39 40 00 00 */	li r10, 0
/* 80169EEC 00166E4C  38 E0 00 00 */	li r7, 0
/* 80169EF0 00166E50  38 80 FF FF */	li r4, -1
/* 80169EF4 00166E54  48 00 00 50 */	b lbl_80169F44
lbl_80169EF8:
/* 80169EF8 00166E58  39 6A 00 01 */	addi r11, r10, 1
/* 80169EFC 00166E5C  7C 68 3A 14 */	add r3, r8, r7
/* 80169F00 00166E60  1C CB 00 1C */	mulli r6, r11, 0x1c
/* 80169F04 00166E64  48 00 00 2C */	b lbl_80169F30
lbl_80169F08:
/* 80169F08 00166E68  7C A8 32 14 */	add r5, r8, r6
/* 80169F0C 00166E6C  81 23 00 0C */	lwz r9, 0xc(r3)
/* 80169F10 00166E70  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80169F14 00166E74  7C 09 00 00 */	cmpw r9, r0
/* 80169F18 00166E78  40 82 00 10 */	bne lbl_80169F28
/* 80169F1C 00166E7C  2C 09 FF FF */	cmpwi r9, -1
/* 80169F20 00166E80  41 82 00 08 */	beq lbl_80169F28
/* 80169F24 00166E84  90 85 00 0C */	stw r4, 0xc(r5)
lbl_80169F28:
/* 80169F28 00166E88  38 C6 00 1C */	addi r6, r6, 0x1c
/* 80169F2C 00166E8C  39 6B 00 01 */	addi r11, r11, 1
lbl_80169F30:
/* 80169F30 00166E90  80 08 00 00 */	lwz r0, 0(r8)
/* 80169F34 00166E94  7C 0B 00 00 */	cmpw r11, r0
/* 80169F38 00166E98  41 80 FF D0 */	blt lbl_80169F08
/* 80169F3C 00166E9C  38 E7 00 1C */	addi r7, r7, 0x1c
/* 80169F40 00166EA0  39 4A 00 01 */	addi r10, r10, 1
lbl_80169F44:
/* 80169F44 00166EA4  80 68 00 00 */	lwz r3, 0(r8)
/* 80169F48 00166EA8  38 03 FF FF */	addi r0, r3, -1
/* 80169F4C 00166EAC  7C 0A 00 00 */	cmpw r10, r0
/* 80169F50 00166EB0  41 80 FF A8 */	blt lbl_80169EF8
/* 80169F54 00166EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80169F58 00166EB8  7F E3 FB 78 */	mr r3, r31
/* 80169F5C 00166EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80169F60 00166EC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80169F64 00166EC4  7C 08 03 A6 */	mtlr r0
/* 80169F68 00166EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80169F6C 00166ECC  4E 80 00 20 */	blr 

.global GetImagePaneName__16CPauseScreenBaseFUi
GetImagePaneName__16CPauseScreenBaseFUi:
/* 80169F70 00166ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80169F74 00166ED4  7C 08 02 A6 */	mflr r0
/* 80169F78 00166ED8  3C 80 80 3D */	lis r4, lbl_803D0440@ha
/* 80169F7C 00166EDC  3C C0 80 3D */	lis r6, lbl_803D0490@ha
/* 80169F80 00166EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80169F84 00166EE4  54 60 10 3A */	slwi r0, r3, 2
/* 80169F88 00166EE8  3C A0 80 3D */	lis r5, lbl_803D0430@ha
/* 80169F8C 00166EEC  38 64 04 40 */	addi r3, r4, lbl_803D0440@l
/* 80169F90 00166EF0  38 85 04 30 */	addi r4, r5, lbl_803D0430@l
/* 80169F94 00166EF4  38 C6 04 90 */	addi r6, r6, lbl_803D0490@l
/* 80169F98 00166EF8  7C A3 00 2E */	lwzx r5, r3, r0
/* 80169F9C 00166EFC  38 66 00 43 */	addi r3, r6, 0x43
/* 80169FA0 00166F00  4C C6 31 82 */	crclr 6
/* 80169FA4 00166F04  48 16 C2 0D */	bl Stringize__7CBasicsFPCce
/* 80169FA8 00166F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80169FAC 00166F0C  7C 08 03 A6 */	mtlr r0
/* 80169FB0 00166F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80169FB4 00166F14  4E 80 00 20 */	blr