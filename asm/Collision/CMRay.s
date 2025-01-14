.include "macros.inc"

.section .text, "ax"

.global GetInvUnscaledTransformRay__5CMRayCFRC12CTransform4f
GetInvUnscaledTransformRay__5CMRayCFRC12CTransform4f:
/* 802D5FE8 002D2F48  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802D5FEC 002D2F4C  7C 08 02 A6 */	mflr r0
/* 802D5FF0 002D2F50  90 01 00 94 */	stw r0, 0x94(r1)
/* 802D5FF4 002D2F54  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 802D5FF8 002D2F58  7C 9F 23 78 */	mr r31, r4
/* 802D5FFC 002D2F5C  7C A4 2B 78 */	mr r4, r5
/* 802D6000 002D2F60  93 C1 00 88 */	stw r30, 0x88(r1)
/* 802D6004 002D2F64  7C 7E 1B 78 */	mr r30, r3
/* 802D6008 002D2F68  38 61 00 20 */	addi r3, r1, 0x20
/* 802D600C 002D2F6C  48 03 CC 91 */	bl GetQuickInverse__12CTransform4fCFv
/* 802D6010 002D2F70  38 61 00 50 */	addi r3, r1, 0x50
/* 802D6014 002D2F74  38 81 00 20 */	addi r4, r1, 0x20
/* 802D6018 002D2F78  48 03 CB 5D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802D601C 002D2F7C  38 61 00 08 */	addi r3, r1, 8
/* 802D6020 002D2F80  38 81 00 50 */	addi r4, r1, 0x50
/* 802D6024 002D2F84  38 BF 00 0C */	addi r5, r31, 0xc
/* 802D6028 002D2F88  48 03 CA C1 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 802D602C 002D2F8C  7F E5 FB 78 */	mr r5, r31
/* 802D6030 002D2F90  38 61 00 14 */	addi r3, r1, 0x14
/* 802D6034 002D2F94  38 81 00 50 */	addi r4, r1, 0x50
/* 802D6038 002D2F98  48 03 CA B1 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 802D603C 002D2F9C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 802D6040 002D2FA0  7F C3 F3 78 */	mr r3, r30
/* 802D6044 002D2FA4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 802D6048 002D2FA8  38 81 00 14 */	addi r4, r1, 0x14
/* 802D604C 002D2FAC  38 A1 00 08 */	addi r5, r1, 8
/* 802D6050 002D2FB0  48 00 00 CD */	bl __ct__5CMRayFRC9CVector3fRC9CVector3fff
/* 802D6054 002D2FB4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802D6058 002D2FB8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 802D605C 002D2FBC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 802D6060 002D2FC0  7C 08 03 A6 */	mtlr r0
/* 802D6064 002D2FC4  38 21 00 90 */	addi r1, r1, 0x90
/* 802D6068 002D2FC8  4E 80 00 20 */	blr

.global __ct__5CMRayFRC9CVector3fRC9CVector3ff
__ct__5CMRayFRC9CVector3fRC9CVector3ff:
/* 802D606C 002D2FCC  C0 44 00 00 */	lfs f2, 0(r4)
/* 802D6070 002D2FD0  C0 02 C5 50 */	lfs f0, lbl_805AE270@sda21(r2)
/* 802D6074 002D2FD4  D0 43 00 00 */	stfs f2, 0(r3)
/* 802D6078 002D2FD8  EC 00 08 24 */	fdivs f0, f0, f1
/* 802D607C 002D2FDC  C0 44 00 04 */	lfs f2, 4(r4)
/* 802D6080 002D2FE0  D0 43 00 04 */	stfs f2, 4(r3)
/* 802D6084 002D2FE4  C0 44 00 08 */	lfs f2, 8(r4)
/* 802D6088 002D2FE8  D0 43 00 08 */	stfs f2, 8(r3)
/* 802D608C 002D2FEC  C0 45 00 00 */	lfs f2, 0(r5)
/* 802D6090 002D2FF0  C0 A5 00 04 */	lfs f5, 4(r5)
/* 802D6094 002D2FF4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 802D6098 002D2FF8  C0 64 00 00 */	lfs f3, 0(r4)
/* 802D609C 002D2FFC  C0 85 00 08 */	lfs f4, 8(r5)
/* 802D60A0 002D3000  EC C1 01 72 */	fmuls f6, f1, f5
/* 802D60A4 002D3004  C0 E4 00 04 */	lfs f7, 4(r4)
/* 802D60A8 002D3008  EC 43 10 2A */	fadds f2, f3, f2
/* 802D60AC 002D300C  C0 A4 00 08 */	lfs f5, 8(r4)
/* 802D60B0 002D3010  EC 61 01 32 */	fmuls f3, f1, f4
/* 802D60B4 002D3014  EC 87 30 2A */	fadds f4, f7, f6
/* 802D60B8 002D3018  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 802D60BC 002D301C  EC 45 18 2A */	fadds f2, f5, f3
/* 802D60C0 002D3020  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 802D60C4 002D3024  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 802D60C8 002D3028  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 802D60CC 002D302C  C0 43 00 00 */	lfs f2, 0(r3)
/* 802D60D0 002D3030  C0 C3 00 10 */	lfs f6, 0x10(r3)
/* 802D60D4 002D3034  C0 A3 00 04 */	lfs f5, 4(r3)
/* 802D60D8 002D3038  EC 43 10 28 */	fsubs f2, f3, f2
/* 802D60DC 002D303C  C0 83 00 14 */	lfs f4, 0x14(r3)
/* 802D60E0 002D3040  C0 63 00 08 */	lfs f3, 8(r3)
/* 802D60E4 002D3044  EC A6 28 28 */	fsubs f5, f6, f5
/* 802D60E8 002D3048  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 802D60EC 002D304C  EC 44 18 28 */	fsubs f2, f4, f3
/* 802D60F0 002D3050  D0 A3 00 1C */	stfs f5, 0x1c(r3)
/* 802D60F4 002D3054  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 802D60F8 002D3058  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802D60FC 002D305C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802D6100 002D3060  C0 05 00 00 */	lfs f0, 0(r5)
/* 802D6104 002D3064  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802D6108 002D3068  C0 05 00 04 */	lfs f0, 4(r5)
/* 802D610C 002D306C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802D6110 002D3070  C0 05 00 08 */	lfs f0, 8(r5)
/* 802D6114 002D3074  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802D6118 002D3078  4E 80 00 20 */	blr

.global __ct__5CMRayFRC9CVector3fRC9CVector3fff
__ct__5CMRayFRC9CVector3fRC9CVector3fff:
/* 802D611C 002D307C  C0 04 00 00 */	lfs f0, 0(r4)
/* 802D6120 002D3080  D0 03 00 00 */	stfs f0, 0(r3)
/* 802D6124 002D3084  C0 04 00 04 */	lfs f0, 4(r4)
/* 802D6128 002D3088  D0 03 00 04 */	stfs f0, 4(r3)
/* 802D612C 002D308C  C0 04 00 08 */	lfs f0, 8(r4)
/* 802D6130 002D3090  D0 03 00 08 */	stfs f0, 8(r3)
/* 802D6134 002D3094  C0 05 00 00 */	lfs f0, 0(r5)
/* 802D6138 002D3098  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802D613C 002D309C  C0 05 00 04 */	lfs f0, 4(r5)
/* 802D6140 002D30A0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802D6144 002D30A4  C0 05 00 08 */	lfs f0, 8(r5)
/* 802D6148 002D30A8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802D614C 002D30AC  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 802D6150 002D30B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802D6154 002D30B4  C0 C3 00 10 */	lfs f6, 0x10(r3)
/* 802D6158 002D30B8  C0 A3 00 04 */	lfs f5, 4(r3)
/* 802D615C 002D30BC  EC 03 00 28 */	fsubs f0, f3, f0
/* 802D6160 002D30C0  C0 83 00 14 */	lfs f4, 0x14(r3)
/* 802D6164 002D30C4  C0 63 00 08 */	lfs f3, 8(r3)
/* 802D6168 002D30C8  EC A6 28 28 */	fsubs f5, f6, f5
/* 802D616C 002D30CC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802D6170 002D30D0  EC 04 18 28 */	fsubs f0, f4, f3
/* 802D6174 002D30D4  D0 A3 00 1C */	stfs f5, 0x1c(r3)
/* 802D6178 002D30D8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802D617C 002D30DC  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802D6180 002D30E0  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 802D6184 002D30E4  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 802D6188 002D30E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802D618C 002D30EC  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 802D6190 002D30F0  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 802D6194 002D30F4  EC 03 00 32 */	fmuls f0, f3, f0
/* 802D6198 002D30F8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 802D619C 002D30FC  EC 23 00 72 */	fmuls f1, f3, f1
/* 802D61A0 002D3100  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802D61A4 002D3104  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 802D61A8 002D3108  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 802D61AC 002D310C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AE270
lbl_805AE270:
	# ROM: 0x3FAB10
	.float 1.0
	.4byte 0

