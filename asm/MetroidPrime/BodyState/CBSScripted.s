.include "macros.inc"

.section .data
.balign 8

.global lbl_803E24A8
lbl_803E24A8:
	# ROM: 0x3DF4A8
	.4byte 0
	.4byte 0
	.4byte __dt__11CBSScriptedFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__10CBodyStateCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__11CBSScriptedCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__10CBodyStateCFv
	.4byte Start__11CBSScriptedFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__11CBSScriptedFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__11CBSScriptedFR15CBodyController

.section .text, "ax"

.global __dt__11CBSScriptedFv
__dt__11CBSScriptedFv:
/* 8014B0C0 00148020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014B0C4 00148024  7C 08 02 A6 */	mflr r0
/* 8014B0C8 00148028  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014B0CC 0014802C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014B0D0 00148030  7C 7F 1B 79 */	or. r31, r3, r3
/* 8014B0D4 00148034  41 82 00 30 */	beq lbl_8014B104
/* 8014B0D8 00148038  3C 60 80 3E */	lis r3, lbl_803E24A8@ha
/* 8014B0DC 0014803C  38 03 24 A8 */	addi r0, r3, lbl_803E24A8@l
/* 8014B0E0 00148040  90 1F 00 00 */	stw r0, 0(r31)
/* 8014B0E4 00148044  41 82 00 10 */	beq lbl_8014B0F4
/* 8014B0E8 00148048  3C 60 80 3E */	lis r3, __vt__10CBodyState@ha
/* 8014B0EC 0014804C  38 03 13 18 */	addi r0, r3, __vt__10CBodyState@l
/* 8014B0F0 00148050  90 1F 00 00 */	stw r0, 0(r31)
lbl_8014B0F4:
/* 8014B0F4 00148054  7C 80 07 35 */	extsh. r0, r4
/* 8014B0F8 00148058  40 81 00 0C */	ble lbl_8014B104
/* 8014B0FC 0014805C  7F E3 FB 78 */	mr r3, r31
/* 8014B100 00148060  48 1C A8 31 */	bl Free__7CMemoryFPCv
lbl_8014B104:
/* 8014B104 00148064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014B108 00148068  7F E3 FB 78 */	mr r3, r31
/* 8014B10C 0014806C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014B110 00148070  7C 08 03 A6 */	mtlr r0
/* 8014B114 00148074  38 21 00 10 */	addi r1, r1, 0x10
/* 8014B118 00148078  4E 80 00 20 */	blr

.global ApplyHeadTracking__11CBSScriptedCFv
ApplyHeadTracking__11CBSScriptedCFv:
/* 8014B11C 0014807C  38 60 00 00 */	li r3, 0
/* 8014B120 00148080  4E 80 00 20 */	blr

.global GetBodyStateTransition__11CBSScriptedFfR15CBodyController
GetBodyStateTransition__11CBSScriptedFfR15CBodyController:
/* 8014B124 00148084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014B128 00148088  7C 08 02 A6 */	mflr r0
/* 8014B12C 0014808C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014B130 00148090  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014B134 00148094  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014B138 00148098  7C 9E 23 78 */	mr r30, r4
/* 8014B13C 0014809C  3B FE 00 04 */	addi r31, r30, 4
/* 8014B140 001480A0  38 80 00 0F */	li r4, 0xf
/* 8014B144 001480A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014B148 001480A8  7C 7D 1B 78 */	mr r29, r3
/* 8014B14C 001480AC  7F E3 FB 78 */	mr r3, r31
/* 8014B150 001480B0  4B FE 63 01 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014B154 001480B4  28 03 00 00 */	cmplwi r3, 0
/* 8014B158 001480B8  41 82 00 0C */	beq lbl_8014B164
/* 8014B15C 001480BC  38 60 00 0E */	li r3, 0xe
/* 8014B160 001480C0  48 00 00 B4 */	b lbl_8014B214
lbl_8014B164:
/* 8014B164 001480C4  7F E3 FB 78 */	mr r3, r31
/* 8014B168 001480C8  38 80 00 03 */	li r4, 3
/* 8014B16C 001480CC  4B FE 62 E5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014B170 001480D0  28 03 00 00 */	cmplwi r3, 0
/* 8014B174 001480D4  41 82 00 0C */	beq lbl_8014B180
/* 8014B178 001480D8  38 60 00 00 */	li r3, 0
/* 8014B17C 001480DC  48 00 00 98 */	b lbl_8014B214
lbl_8014B180:
/* 8014B180 001480E0  7F E3 FB 78 */	mr r3, r31
/* 8014B184 001480E4  38 80 00 09 */	li r4, 9
/* 8014B188 001480E8  4B FE 62 C9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014B18C 001480EC  28 03 00 00 */	cmplwi r3, 0
/* 8014B190 001480F0  41 82 00 0C */	beq lbl_8014B19C
/* 8014B194 001480F4  38 60 00 0A */	li r3, 0xa
/* 8014B198 001480F8  48 00 00 7C */	b lbl_8014B214
lbl_8014B19C:
/* 8014B19C 001480FC  7F E3 FB 78 */	mr r3, r31
/* 8014B1A0 00148100  38 80 00 04 */	li r4, 4
/* 8014B1A4 00148104  4B FE 62 AD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014B1A8 00148108  28 03 00 00 */	cmplwi r3, 0
/* 8014B1AC 0014810C  41 82 00 0C */	beq lbl_8014B1B8
/* 8014B1B0 00148110  38 60 00 06 */	li r3, 6
/* 8014B1B4 00148114  48 00 00 60 */	b lbl_8014B214
lbl_8014B1B8:
/* 8014B1B8 00148118  7F E3 FB 78 */	mr r3, r31
/* 8014B1BC 0014811C  38 80 00 13 */	li r4, 0x13
/* 8014B1C0 00148120  4B FE 62 91 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014B1C4 00148124  28 03 00 00 */	cmplwi r3, 0
/* 8014B1C8 00148128  41 82 00 0C */	beq lbl_8014B1D4
/* 8014B1CC 0014812C  38 60 00 11 */	li r3, 0x11
/* 8014B1D0 00148130  48 00 00 44 */	b lbl_8014B214
lbl_8014B1D4:
/* 8014B1D4 00148134  88 1D 00 04 */	lbz r0, 4(r29)
/* 8014B1D8 00148138  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8014B1DC 0014813C  41 82 00 20 */	beq lbl_8014B1FC
/* 8014B1E0 00148140  7F E3 FB 78 */	mr r3, r31
/* 8014B1E4 00148144  38 80 00 0A */	li r4, 0xa
/* 8014B1E8 00148148  4B FE 62 69 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014B1EC 0014814C  28 03 00 00 */	cmplwi r3, 0
/* 8014B1F0 00148150  41 82 00 20 */	beq lbl_8014B210
/* 8014B1F4 00148154  38 60 00 05 */	li r3, 5
/* 8014B1F8 00148158  48 00 00 1C */	b lbl_8014B214
lbl_8014B1FC:
/* 8014B1FC 0014815C  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 8014B200 00148160  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8014B204 00148164  41 82 00 0C */	beq lbl_8014B210
/* 8014B208 00148168  38 60 00 05 */	li r3, 5
/* 8014B20C 0014816C  48 00 00 08 */	b lbl_8014B214
lbl_8014B210:
/* 8014B210 00148170  38 60 FF FF */	li r3, -1
lbl_8014B214:
/* 8014B214 00148174  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014B218 00148178  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014B21C 0014817C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014B220 00148180  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014B224 00148184  7C 08 03 A6 */	mtlr r0
/* 8014B228 00148188  38 21 00 20 */	addi r1, r1, 0x20
/* 8014B22C 0014818C  4E 80 00 20 */	blr

.global Shutdown__11CBSScriptedFR15CBodyController
Shutdown__11CBSScriptedFR15CBodyController:
/* 8014B230 00148190  4E 80 00 20 */	blr

.global UpdateBody__11CBSScriptedFfR15CBodyControllerR13CStateManager
UpdateBody__11CBSScriptedFfR15CBodyControllerR13CStateManager:
/* 8014B234 00148194  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014B238 00148198  7C 08 02 A6 */	mflr r0
/* 8014B23C 0014819C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014B240 001481A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8014B244 001481A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8014B248 001481A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014B24C 001481AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014B250 001481B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014B254 001481B4  FF E0 08 90 */	fmr f31, f1
/* 8014B258 001481B8  7C 7D 1B 78 */	mr r29, r3
/* 8014B25C 001481BC  7C 9E 23 78 */	mr r30, r4
/* 8014B260 001481C0  4B FF FE C5 */	bl GetBodyStateTransition__11CBSScriptedFfR15CBodyController
/* 8014B264 001481C4  7C 7F 1B 78 */	mr r31, r3
/* 8014B268 001481C8  2C 1F FF FF */	cmpwi r31, -1
/* 8014B26C 001481CC  40 82 00 88 */	bne lbl_8014B2F4
/* 8014B270 001481D0  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8014B274 001481D4  C0 22 9C E8 */	lfs f1, lbl_805ABA08@sda21(r2)
/* 8014B278 001481D8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8014B27C 001481DC  38 00 00 00 */	li r0, 0
/* 8014B280 001481E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8014B284 001481E4  40 82 00 1C */	bne lbl_8014B2A0
/* 8014B288 001481E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014B28C 001481EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8014B290 001481F0  40 82 00 10 */	bne lbl_8014B2A0
/* 8014B294 001481F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8014B298 001481F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8014B29C 001481FC  41 82 00 08 */	beq lbl_8014B2A4
lbl_8014B2A0:
/* 8014B2A0 00148200  38 00 00 01 */	li r0, 1
lbl_8014B2A4:
/* 8014B2A4 00148204  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8014B2A8 00148208  41 82 00 14 */	beq lbl_8014B2BC
/* 8014B2AC 0014820C  FC 20 F8 90 */	fmr f1, f31
/* 8014B2B0 00148210  7F C3 F3 78 */	mr r3, r30
/* 8014B2B4 00148214  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8014B2B8 00148218  4B FE F3 ED */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_8014B2BC:
/* 8014B2BC 0014821C  88 7D 00 04 */	lbz r3, 4(r29)
/* 8014B2C0 00148220  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8014B2C4 00148224  41 82 00 30 */	beq lbl_8014B2F4
/* 8014B2C8 00148228  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8014B2CC 0014822C  41 82 00 28 */	beq lbl_8014B2F4
/* 8014B2D0 00148230  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8014B2D4 00148234  C0 02 9C E8 */	lfs f0, lbl_805ABA08@sda21(r2)
/* 8014B2D8 00148238  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8014B2DC 0014823C  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8014B2E0 00148240  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8014B2E4 00148244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014B2E8 00148248  4C 40 13 82 */	cror 2, 0, 2
/* 8014B2EC 0014824C  40 82 00 08 */	bne lbl_8014B2F4
/* 8014B2F0 00148250  3B E0 00 05 */	li r31, 5
lbl_8014B2F4:
/* 8014B2F4 00148254  7F E3 FB 78 */	mr r3, r31
/* 8014B2F8 00148258  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8014B2FC 0014825C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014B300 00148260  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8014B304 00148264  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014B308 00148268  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014B30C 0014826C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014B310 00148270  7C 08 03 A6 */	mtlr r0
/* 8014B314 00148274  38 21 00 30 */	addi r1, r1, 0x30
/* 8014B318 00148278  4E 80 00 20 */	blr

.global Start__11CBSScriptedFR15CBodyControllerR13CStateManager
Start__11CBSScriptedFR15CBodyControllerR13CStateManager:
/* 8014B31C 0014827C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014B320 00148280  7C 08 02 A6 */	mflr r0
/* 8014B324 00148284  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014B328 00148288  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8014B32C 0014828C  7C 9F 23 78 */	mr r31, r4
/* 8014B330 00148290  38 80 00 13 */	li r4, 0x13
/* 8014B334 00148294  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8014B338 00148298  7C 7E 1B 78 */	mr r30, r3
/* 8014B33C 0014829C  38 7F 00 04 */	addi r3, r31, 4
/* 8014B340 001482A0  4B FE 61 11 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014B344 001482A4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8014B348 001482A8  7C 6A 1B 78 */	mr r10, r3
/* 8014B34C 001482AC  88 9E 00 04 */	lbz r4, 4(r30)
/* 8014B350 001482B0  38 E0 FF FF */	li r7, -1
/* 8014B354 001482B4  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 8014B358 001482B8  C0 02 9C EC */	lfs f0, lbl_805ABA0C@sda21(r2)
/* 8014B35C 001482BC  50 64 3E 30 */	rlwimi r4, r3, 7, 0x18, 0x18
/* 8014B360 001482C0  38 A0 00 01 */	li r5, 1
/* 8014B364 001482C4  98 9E 00 04 */	stb r4, 4(r30)
/* 8014B368 001482C8  38 00 00 00 */	li r0, 0
/* 8014B36C 001482CC  7F E3 FB 78 */	mr r3, r31
/* 8014B370 001482D0  38 81 00 08 */	addi r4, r1, 8
/* 8014B374 001482D4  89 2A 00 0C */	lbz r9, 0xc(r10)
/* 8014B378 001482D8  38 C0 00 00 */	li r6, 0
/* 8014B37C 001482DC  89 1E 00 04 */	lbz r8, 4(r30)
/* 8014B380 001482E0  51 28 06 72 */	rlwimi r8, r9, 0, 0x19, 0x19
/* 8014B384 001482E4  99 1E 00 04 */	stb r8, 4(r30)
/* 8014B388 001482E8  C0 2A 00 10 */	lfs f1, 0x10(r10)
/* 8014B38C 001482EC  D0 3E 00 08 */	stfs f1, 8(r30)
/* 8014B390 001482F0  81 0A 00 08 */	lwz r8, 8(r10)
/* 8014B394 001482F4  91 01 00 08 */	stw r8, 8(r1)
/* 8014B398 001482F8  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8014B39C 001482FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014B3A0 00148300  98 A1 00 14 */	stb r5, 0x14(r1)
/* 8014B3A4 00148304  90 01 00 18 */	stw r0, 0x18(r1)
/* 8014B3A8 00148308  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8014B3AC 0014830C  98 01 00 20 */	stb r0, 0x20(r1)
/* 8014B3B0 00148310  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014B3B4 00148314  90 01 00 28 */	stw r0, 0x28(r1)
/* 8014B3B8 00148318  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8014B3BC 0014831C  88 0A 00 0C */	lbz r0, 0xc(r10)
/* 8014B3C0 00148320  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 8014B3C4 00148324  4B FE F5 59 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 8014B3C8 00148328  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014B3CC 0014832C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8014B3D0 00148330  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8014B3D4 00148334  7C 08 03 A6 */	mtlr r0
/* 8014B3D8 00148338  38 21 00 40 */	addi r1, r1, 0x40
/* 8014B3DC 0014833C  4E 80 00 20 */	blr

.global __ct__11CBSScriptedFv
__ct__11CBSScriptedFv:
/* 8014B3E0 00148340  3C C0 80 3E */	lis r6, __vt__10CBodyState@ha
/* 8014B3E4 00148344  3C A0 80 3E */	lis r5, lbl_803E24A8@ha
/* 8014B3E8 00148348  38 C6 13 18 */	addi r6, r6, __vt__10CBodyState@l
/* 8014B3EC 0014834C  38 80 00 00 */	li r4, 0
/* 8014B3F0 00148350  90 C3 00 00 */	stw r6, 0(r3)
/* 8014B3F4 00148354  38 05 24 A8 */	addi r0, r5, lbl_803E24A8@l
/* 8014B3F8 00148358  C0 02 9C E8 */	lfs f0, lbl_805ABA08@sda21(r2)
/* 8014B3FC 0014835C  90 03 00 00 */	stw r0, 0(r3)
/* 8014B400 00148360  88 03 00 04 */	lbz r0, 4(r3)
/* 8014B404 00148364  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8014B408 00148368  98 03 00 04 */	stb r0, 4(r3)
/* 8014B40C 0014836C  88 03 00 04 */	lbz r0, 4(r3)
/* 8014B410 00148370  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8014B414 00148374  98 03 00 04 */	stb r0, 4(r3)
/* 8014B418 00148378  D0 03 00 08 */	stfs f0, 8(r3)
/* 8014B41C 0014837C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABA08
lbl_805ABA08:
	# ROM: 0x3F82A8
	.4byte 0

.global lbl_805ABA0C
lbl_805ABA0C:
	# ROM: 0x3F82AC
	.float 1.0
