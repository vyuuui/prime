.include "macros.inc"

.section .data
.balign 8

.global __vt__12CBSKnockBack
__vt__12CBSKnockBack:
	# ROM: 0x3DE450
	.4byte 0
	.4byte 0
	.4byte __dt__12CBSKnockBackFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__12CBSKnockBackCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__10CBodyStateCFv
	.4byte Start__12CBSKnockBackFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__12CBSKnockBackFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__12CBSKnockBackFR15CBodyController

.section .text, "ax"

.global __dt__12CBSKnockBackFv
__dt__12CBSKnockBackFv:
/* 801361FC 0013315C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136200 00133160  7C 08 02 A6 */	mflr r0
/* 80136204 00133164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136208 00133168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013620C 0013316C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80136210 00133170  41 82 00 30 */	beq lbl_80136240
/* 80136214 00133174  3C 60 80 3E */	lis r3, __vt__12CBSKnockBack@ha
/* 80136218 00133178  38 03 14 50 */	addi r0, r3, __vt__12CBSKnockBack@l
/* 8013621C 0013317C  90 1F 00 00 */	stw r0, 0(r31)
/* 80136220 00133180  41 82 00 10 */	beq lbl_80136230
/* 80136224 00133184  3C 60 80 3E */	lis r3, __vt__10CBodyState@ha
/* 80136228 00133188  38 03 13 18 */	addi r0, r3, __vt__10CBodyState@l
/* 8013622C 0013318C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80136230:
/* 80136230 00133190  7C 80 07 35 */	extsh. r0, r4
/* 80136234 00133194  40 81 00 0C */	ble lbl_80136240
/* 80136238 00133198  7F E3 FB 78 */	mr r3, r31
/* 8013623C 0013319C  48 1D F6 F5 */	bl Free__7CMemoryFPCv
lbl_80136240:
/* 80136240 001331A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136244 001331A4  7F E3 FB 78 */	mr r3, r31
/* 80136248 001331A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013624C 001331AC  7C 08 03 A6 */	mtlr r0
/* 80136250 001331B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80136254 001331B4  4E 80 00 20 */	blr

.global IsMoving__12CBSKnockBackCFv
IsMoving__12CBSKnockBackCFv:
/* 80136258 001331B8  38 60 00 01 */	li r3, 1
/* 8013625C 001331BC  4E 80 00 20 */	blr

.global GetBodyStateTransition__12CBSKnockBackFfR15CBodyController
GetBodyStateTransition__12CBSKnockBackFfR15CBodyController:
/* 80136260 001331C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80136264 001331C4  7C 08 02 A6 */	mflr r0
/* 80136268 001331C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013626C 001331CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80136270 001331D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80136274 001331D4  7C 9E 23 78 */	mr r30, r4
/* 80136278 001331D8  3B FE 00 04 */	addi r31, r30, 4
/* 8013627C 001331DC  38 80 00 0F */	li r4, 0xf
/* 80136280 001331E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80136284 001331E4  7C 7D 1B 78 */	mr r29, r3
/* 80136288 001331E8  7F E3 FB 78 */	mr r3, r31
/* 8013628C 001331EC  4B FF B1 C5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80136290 001331F0  28 03 00 00 */	cmplwi r3, 0
/* 80136294 001331F4  41 82 00 0C */	beq lbl_801362A0
/* 80136298 001331F8  38 60 00 0E */	li r3, 0xe
/* 8013629C 001331FC  48 00 00 80 */	b lbl_8013631C
lbl_801362A0:
/* 801362A0 00133200  7F E3 FB 78 */	mr r3, r31
/* 801362A4 00133204  38 80 00 03 */	li r4, 3
/* 801362A8 00133208  4B FF B1 A9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801362AC 0013320C  28 03 00 00 */	cmplwi r3, 0
/* 801362B0 00133210  41 82 00 0C */	beq lbl_801362BC
/* 801362B4 00133214  38 60 00 00 */	li r3, 0
/* 801362B8 00133218  48 00 00 64 */	b lbl_8013631C
lbl_801362BC:
/* 801362BC 0013321C  7F E3 FB 78 */	mr r3, r31
/* 801362C0 00133220  38 80 00 09 */	li r4, 9
/* 801362C4 00133224  4B FF B1 8D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801362C8 00133228  28 03 00 00 */	cmplwi r3, 0
/* 801362CC 0013322C  41 82 00 0C */	beq lbl_801362D8
/* 801362D0 00133230  38 60 00 0A */	li r3, 0xa
/* 801362D4 00133234  48 00 00 48 */	b lbl_8013631C
lbl_801362D8:
/* 801362D8 00133238  7F E3 FB 78 */	mr r3, r31
/* 801362DC 0013323C  38 80 00 04 */	li r4, 4
/* 801362E0 00133240  4B FF B1 71 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801362E4 00133244  28 03 00 00 */	cmplwi r3, 0
/* 801362E8 00133248  41 82 00 1C */	beq lbl_80136304
/* 801362EC 0013324C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 801362F0 00133250  C0 02 99 F8 */	lfs f0, lbl_805AB718@sda21(r2)
/* 801362F4 00133254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801362F8 00133258  40 81 00 0C */	ble lbl_80136304
/* 801362FC 0013325C  38 60 00 06 */	li r3, 6
/* 80136300 00133260  48 00 00 1C */	b lbl_8013631C
lbl_80136304:
/* 80136304 00133264  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 80136308 00133268  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013630C 0013326C  41 82 00 0C */	beq lbl_80136318
/* 80136310 00133270  38 60 00 05 */	li r3, 5
/* 80136314 00133274  48 00 00 08 */	b lbl_8013631C
lbl_80136318:
/* 80136318 00133278  38 60 FF FF */	li r3, -1
lbl_8013631C:
/* 8013631C 0013327C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80136320 00133280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80136324 00133284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80136328 00133288  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8013632C 0013328C  7C 08 03 A6 */	mtlr r0
/* 80136330 00133290  38 21 00 20 */	addi r1, r1, 0x20
/* 80136334 00133294  4E 80 00 20 */	blr

.global Shutdown__12CBSKnockBackFR15CBodyController
Shutdown__12CBSKnockBackFR15CBodyController:
/* 80136338 00133298  4E 80 00 20 */	blr

.global UpdateBody__12CBSKnockBackFfR15CBodyControllerR13CStateManager
UpdateBody__12CBSKnockBackFfR15CBodyControllerR13CStateManager:
/* 8013633C 0013329C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80136340 001332A0  7C 08 02 A6 */	mflr r0
/* 80136344 001332A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80136348 001332A8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8013634C 001332AC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80136350 001332B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80136354 001332B4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80136358 001332B8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8013635C 001332BC  FF E0 08 90 */	fmr f31, f1
/* 80136360 001332C0  7C 7D 1B 78 */	mr r29, r3
/* 80136364 001332C4  7C 9E 23 78 */	mr r30, r4
/* 80136368 001332C8  4B FF FE F9 */	bl GetBodyStateTransition__12CBSKnockBackFfR15CBodyController
/* 8013636C 001332CC  7C 7F 1B 78 */	mr r31, r3
/* 80136370 001332D0  2C 1F FF FF */	cmpwi r31, -1
/* 80136374 001332D4  40 82 00 50 */	bne lbl_801363C4
/* 80136378 001332D8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8013637C 001332DC  C0 02 99 FC */	lfs f0, lbl_805AB71C@sda21(r2)
/* 80136380 001332E0  EC 21 F8 2A */	fadds f1, f1, f31
/* 80136384 001332E4  D0 3D 00 04 */	stfs f1, 4(r29)
/* 80136388 001332E8  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8013638C 001332EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136390 001332F0  40 81 00 34 */	ble lbl_801363C4
/* 80136394 001332F4  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80136398 001332F8  38 61 00 0C */	addi r3, r1, 0xc
/* 8013639C 001332FC  38 81 00 08 */	addi r4, r1, 8
/* 801363A0 00133300  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801363A4 00133304  D0 01 00 08 */	stfs f0, 8(r1)
/* 801363A8 00133308  48 1D AD 51 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 801363AC 0013330C  7F C3 F3 78 */	mr r3, r30
/* 801363B0 00133310  38 81 00 0C */	addi r4, r1, 0xc
/* 801363B4 00133314  48 00 44 55 */	bl SetDeltaRotation__15CBodyControllerFRC11CQuaternion
/* 801363B8 00133318  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 801363BC 0013331C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801363C0 00133320  D0 1D 00 0C */	stfs f0, 0xc(r29)
lbl_801363C4:
/* 801363C4 00133324  7F E3 FB 78 */	mr r3, r31
/* 801363C8 00133328  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801363CC 0013332C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801363D0 00133330  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801363D4 00133334  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801363D8 00133338  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801363DC 0013333C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801363E0 00133340  7C 08 03 A6 */	mtlr r0
/* 801363E4 00133344  38 21 00 40 */	addi r1, r1, 0x40
/* 801363E8 00133348  4E 80 00 20 */	blr

.global Start__12CBSKnockBackFR15CBodyControllerR13CStateManager
Start__12CBSKnockBackFR15CBodyControllerR13CStateManager:
/* 801363EC 0013334C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 801363F0 00133350  7C 08 02 A6 */	mflr r0
/* 801363F4 00133354  90 01 01 54 */	stw r0, 0x154(r1)
/* 801363F8 00133358  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 801363FC 0013335C  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 80136400 00133360  BF 61 01 2C */	stmw r27, 0x12c(r1)
/* 80136404 00133364  7C 9F 23 78 */	mr r31, r4
/* 80136408 00133368  7C 7E 1B 78 */	mr r30, r3
/* 8013640C 0013336C  7C BB 2B 78 */	mr r27, r5
/* 80136410 00133370  38 80 00 04 */	li r4, 4
/* 80136414 00133374  38 7F 00 04 */	addi r3, r31, 4
/* 80136418 00133378  4B FF B0 39 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013641C 0013337C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80136420 00133380  7C 7D 1B 78 */	mr r29, r3
/* 80136424 00133384  38 61 00 80 */	addi r3, r1, 0x80
/* 80136428 00133388  38 84 00 34 */	addi r4, r4, 0x34
/* 8013642C 0013338C  38 BD 00 08 */	addi r5, r29, 8
/* 80136430 00133390  48 1D C5 F5 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80136434 00133394  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80136438 00133398  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 8013643C 0013339C  48 25 E8 31 */	bl atan2
/* 80136440 001333A0  FC 80 08 18 */	frsp f4, f1
/* 80136444 001333A4  C0 02 9A 00 */	lfs f0, lbl_805AB720@sda21(r2)
/* 80136448 001333A8  3C 00 43 30 */	lis r0, 0x4330
/* 8013644C 001333AC  C8 62 9A 20 */	lfd f3, lbl_805AB740@sda21(r2)
/* 80136450 001333B0  90 01 01 08 */	stw r0, 0x108(r1)
/* 80136454 001333B4  EC 44 00 32 */	fmuls f2, f4, f0
/* 80136458 001333B8  C0 22 9A 04 */	lfs f1, lbl_805AB724@sda21(r2)
/* 8013645C 001333BC  C0 02 99 FC */	lfs f0, lbl_805AB71C@sda21(r2)
/* 80136460 001333C0  FC 40 10 1E */	fctiwz f2, f2
/* 80136464 001333C4  D8 41 01 00 */	stfd f2, 0x100(r1)
/* 80136468 001333C8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8013646C 001333CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80136470 001333D0  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80136474 001333D4  C8 41 01 08 */	lfd f2, 0x108(r1)
/* 80136478 001333D8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8013647C 001333DC  EF E2 20 7C */	fnmsubs f31, f2, f1, f4
/* 80136480 001333E0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80136484 001333E4  40 80 00 08 */	bge lbl_8013648C
/* 80136488 001333E8  EF FF 08 2A */	fadds f31, f31, f1
lbl_8013648C:
/* 8013648C 001333EC  7F E3 FB 78 */	mr r3, r31
/* 80136490 001333F0  48 00 3F C5 */	bl GetPASDatabase__15CBodyControllerCFv
/* 80136494 001333F4  83 BD 00 14 */	lwz r29, 0x14(r29)
/* 80136498 001333F8  7C 7C 1B 78 */	mr r28, r3
/* 8013649C 001333FC  38 61 00 30 */	addi r3, r1, 0x30
/* 801364A0 00133400  48 1A CB DD */	bl NoParameter__12CPASAnimParmFv
/* 801364A4 00133404  38 61 00 38 */	addi r3, r1, 0x38
/* 801364A8 00133408  48 1A CB D5 */	bl NoParameter__12CPASAnimParmFv
/* 801364AC 0013340C  38 61 00 40 */	addi r3, r1, 0x40
/* 801364B0 00133410  48 1A CB CD */	bl NoParameter__12CPASAnimParmFv
/* 801364B4 00133414  38 61 00 48 */	addi r3, r1, 0x48
/* 801364B8 00133418  48 1A CB C5 */	bl NoParameter__12CPASAnimParmFv
/* 801364BC 0013341C  38 61 00 50 */	addi r3, r1, 0x50
/* 801364C0 00133420  48 1A CB BD */	bl NoParameter__12CPASAnimParmFv
/* 801364C4 00133424  38 61 00 58 */	addi r3, r1, 0x58
/* 801364C8 00133428  48 1A CB B5 */	bl NoParameter__12CPASAnimParmFv
/* 801364CC 0013342C  7F A4 EB 78 */	mr r4, r29
/* 801364D0 00133430  38 61 00 60 */	addi r3, r1, 0x60
/* 801364D4 00133434  48 1A CA B1 */	bl FromEnum__12CPASAnimParmFi
/* 801364D8 00133438  C0 02 9A 08 */	lfs f0, lbl_805AB728@sda21(r2)
/* 801364DC 0013343C  38 61 00 68 */	addi r3, r1, 0x68
/* 801364E0 00133440  EC 20 07 F2 */	fmuls f1, f0, f31
/* 801364E4 00133444  48 1A CB 05 */	bl FromReal32__12CPASAnimParmFf
/* 801364E8 00133448  38 61 00 38 */	addi r3, r1, 0x38
/* 801364EC 0013344C  38 01 00 30 */	addi r0, r1, 0x30
/* 801364F0 00133450  90 61 00 08 */	stw r3, 8(r1)
/* 801364F4 00133454  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801364F8 00133458  38 A1 00 68 */	addi r5, r1, 0x68
/* 801364FC 0013345C  38 C1 00 60 */	addi r6, r1, 0x60
/* 80136500 00133460  90 01 00 0C */	stw r0, 0xc(r1)
/* 80136504 00133464  38 E1 00 58 */	addi r7, r1, 0x58
/* 80136508 00133468  39 01 00 50 */	addi r8, r1, 0x50
/* 8013650C 0013346C  39 21 00 48 */	addi r9, r1, 0x48
/* 80136510 00133470  39 41 00 40 */	addi r10, r1, 0x40
/* 80136514 00133474  38 80 00 06 */	li r4, 6
/* 80136518 00133478  4B F4 6D AD */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013651C 0013347C  80 DB 09 00 */	lwz r6, 0x900(r27)
/* 80136520 00133480  7F 84 E3 78 */	mr r4, r28
/* 80136524 00133484  38 61 00 28 */	addi r3, r1, 0x28
/* 80136528 00133488  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 8013652C 0013348C  38 E0 FF FF */	li r7, -1
/* 80136530 00133490  48 1A EB 31 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 80136534 00133494  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 80136538 00133498  38 00 00 00 */	li r0, 0
/* 8013653C 0013349C  C0 02 9A 0C */	lfs f0, lbl_805AB72C@sda21(r2)
/* 80136540 001334A0  38 A0 FF FF */	li r5, -1
/* 80136544 001334A4  38 E0 00 01 */	li r7, 1
/* 80136548 001334A8  93 A1 00 8C */	stw r29, 0x8c(r1)
/* 8013654C 001334AC  7F E3 FB 78 */	mr r3, r31
/* 80136550 001334B0  38 81 00 8C */	addi r4, r1, 0x8c
/* 80136554 001334B4  90 A1 00 90 */	stw r5, 0x90(r1)
/* 80136558 001334B8  38 A0 00 00 */	li r5, 0
/* 8013655C 001334BC  38 C0 00 00 */	li r6, 0
/* 80136560 001334C0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80136564 001334C4  98 E1 00 98 */	stb r7, 0x98(r1)
/* 80136568 001334C8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8013656C 001334CC  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80136570 001334D0  98 01 00 A4 */	stb r0, 0xa4(r1)
/* 80136574 001334D4  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80136578 001334D8  90 01 00 AC */	stw r0, 0xac(r1)
/* 8013657C 001334DC  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80136580 001334E0  48 00 43 9D */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 80136584 001334E4  7F 83 E3 78 */	mr r3, r28
/* 80136588 001334E8  38 80 00 06 */	li r4, 6
/* 8013658C 001334EC  48 1A E9 39 */	bl GetAnimState__12CPASDatabaseCFi
/* 80136590 001334F0  7C 7C 1B 78 */	mr r28, r3
/* 80136594 001334F4  7F A5 EB 78 */	mr r5, r29
/* 80136598 001334F8  38 61 00 20 */	addi r3, r1, 0x20
/* 8013659C 001334FC  38 C0 00 02 */	li r6, 2
/* 801365A0 00133500  7F 84 E3 78 */	mr r4, r28
/* 801365A4 00133504  48 1A DA 51 */	bl GetAnimParmData__13CPASAnimStateCFiUi
/* 801365A8 00133508  80 81 00 20 */	lwz r4, 0x20(r1)
/* 801365AC 0013350C  38 61 00 78 */	addi r3, r1, 0x78
/* 801365B0 00133510  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801365B4 00133514  90 81 00 78 */	stw r4, 0x78(r1)
/* 801365B8 00133518  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801365BC 0013351C  48 1A C9 A9 */	bl GetBoolValue__12CPASAnimParmCFv
/* 801365C0 00133520  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801365C4 00133524  40 82 01 50 */	bne lbl_80136714
/* 801365C8 00133528  7F 84 E3 78 */	mr r4, r28
/* 801365CC 0013352C  7F A5 EB 78 */	mr r5, r29
/* 801365D0 00133530  38 61 00 18 */	addi r3, r1, 0x18
/* 801365D4 00133534  38 C0 00 00 */	li r6, 0
/* 801365D8 00133538  48 1A DA 1D */	bl GetAnimParmData__13CPASAnimStateCFiUi
/* 801365DC 0013353C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 801365E0 00133540  38 61 00 70 */	addi r3, r1, 0x70
/* 801365E4 00133544  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801365E8 00133548  90 81 00 70 */	stw r4, 0x70(r1)
/* 801365EC 0013354C  90 01 00 74 */	stw r0, 0x74(r1)
/* 801365F0 00133550  48 1A C9 7D */	bl GetReal32Value__12CPASAnimParmCFv
/* 801365F4 00133554  C0 02 9A 10 */	lfs f0, lbl_805AB730@sda21(r2)
/* 801365F8 00133558  3C 00 43 30 */	lis r0, 0x4330
/* 801365FC 0013355C  C0 42 9A 00 */	lfs f2, lbl_805AB720@sda21(r2)
/* 80136600 00133560  EC A0 00 72 */	fmuls f5, f0, f1
/* 80136604 00133564  90 01 01 00 */	stw r0, 0x100(r1)
/* 80136608 00133568  C8 62 9A 20 */	lfd f3, lbl_805AB740@sda21(r2)
/* 8013660C 0013356C  C0 22 9A 04 */	lfs f1, lbl_805AB724@sda21(r2)
/* 80136610 00133570  EC 9F 28 28 */	fsubs f4, f31, f5
/* 80136614 00133574  C0 02 99 FC */	lfs f0, lbl_805AB71C@sda21(r2)
/* 80136618 00133578  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8013661C 0013357C  FC 40 10 1E */	fctiwz f2, f2
/* 80136620 00133580  D8 41 01 08 */	stfd f2, 0x108(r1)
/* 80136624 00133584  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 80136628 00133588  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8013662C 0013358C  90 01 01 04 */	stw r0, 0x104(r1)
/* 80136630 00133590  C8 41 01 00 */	lfd f2, 0x100(r1)
/* 80136634 00133594  EC 42 18 28 */	fsubs f2, f2, f3
/* 80136638 00133598  EC C2 20 7C */	fnmsubs f6, f2, f1, f4
/* 8013663C 0013359C  FC 80 30 90 */	fmr f4, f6
/* 80136640 001335A0  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80136644 001335A4  40 80 00 08 */	bge lbl_8013664C
/* 80136648 001335A8  EC 86 08 2A */	fadds f4, f6, f1
lbl_8013664C:
/* 8013664C 001335AC  EC A5 F8 28 */	fsubs f5, f5, f31
/* 80136650 001335B0  C0 02 9A 00 */	lfs f0, lbl_805AB720@sda21(r2)
/* 80136654 001335B4  3C 00 43 30 */	lis r0, 0x4330
/* 80136658 001335B8  C8 62 9A 20 */	lfd f3, lbl_805AB740@sda21(r2)
/* 8013665C 001335BC  90 01 01 18 */	stw r0, 0x118(r1)
/* 80136660 001335C0  EC 45 00 32 */	fmuls f2, f5, f0
/* 80136664 001335C4  C0 22 9A 04 */	lfs f1, lbl_805AB724@sda21(r2)
/* 80136668 001335C8  C0 02 99 FC */	lfs f0, lbl_805AB71C@sda21(r2)
/* 8013666C 001335CC  FC 40 10 1E */	fctiwz f2, f2
/* 80136670 001335D0  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80136674 001335D4  D8 41 01 10 */	stfd f2, 0x110(r1)
/* 80136678 001335D8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8013667C 001335DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80136680 001335E0  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80136684 001335E4  C8 41 01 18 */	lfd f2, 0x118(r1)
/* 80136688 001335E8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8013668C 001335EC  EC 42 28 7C */	fnmsubs f2, f2, f1, f5
/* 80136690 001335F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80136694 001335F4  40 80 00 08 */	bge lbl_8013669C
/* 80136698 001335F8  EC 42 08 2A */	fadds f2, f2, f1
lbl_8013669C:
/* 8013669C 001335FC  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 801366A0 00133600  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801366A4 00133604  40 80 00 0C */	bge lbl_801366B0
/* 801366A8 00133608  38 61 00 10 */	addi r3, r1, 0x10
/* 801366AC 0013360C  48 00 00 08 */	b lbl_801366B4
lbl_801366B0:
/* 801366B0 00133610  38 61 00 14 */	addi r3, r1, 0x14
lbl_801366B4:
/* 801366B4 00133614  C0 02 99 FC */	lfs f0, lbl_805AB71C@sda21(r2)
/* 801366B8 00133618  C0 23 00 00 */	lfs f1, 0(r3)
/* 801366BC 0013361C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 801366C0 00133620  40 80 00 0C */	bge lbl_801366CC
/* 801366C4 00133624  C0 02 9A 04 */	lfs f0, lbl_805AB724@sda21(r2)
/* 801366C8 00133628  EC C6 00 2A */	fadds f6, f6, f0
lbl_801366CC:
/* 801366CC 0013362C  C0 02 9A 14 */	lfs f0, lbl_805AB734@sda21(r2)
/* 801366D0 00133630  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 801366D4 00133634  40 81 00 0C */	ble lbl_801366E0
/* 801366D8 00133638  FF E0 08 50 */	fneg f31, f1
/* 801366DC 0013363C  48 00 00 08 */	b lbl_801366E4
lbl_801366E0:
/* 801366E0 00133640  FF E0 08 90 */	fmr f31, f1
lbl_801366E4:
/* 801366E4 00133644  7F E3 FB 78 */	mr r3, r31
/* 801366E8 00133648  48 00 41 D1 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 801366EC 0013364C  C0 42 9A 18 */	lfs f2, lbl_805AB738@sda21(r2)
/* 801366F0 00133650  C0 02 9A 1C */	lfs f0, lbl_805AB73C@sda21(r2)
/* 801366F4 00133654  EC 22 00 72 */	fmuls f1, f2, f1
/* 801366F8 00133658  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 801366FC 0013365C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80136700 00133660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136704 00133664  40 81 00 08 */	ble lbl_8013670C
/* 80136708 00133668  EF FF 08 24 */	fdivs f31, f31, f1
lbl_8013670C:
/* 8013670C 0013366C  D3 FE 00 08 */	stfs f31, 8(r30)
/* 80136710 00133670  48 00 00 10 */	b lbl_80136720
lbl_80136714:
/* 80136714 00133674  C0 02 99 FC */	lfs f0, lbl_805AB71C@sda21(r2)
/* 80136718 00133678  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8013671C 0013367C  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80136720:
/* 80136720 00133680  C0 02 99 FC */	lfs f0, lbl_805AB71C@sda21(r2)
/* 80136724 00133684  34 A1 00 B8 */	addic. r5, r1, 0xb8
/* 80136728 00133688  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8013672C 0013368C  41 82 00 58 */	beq lbl_80136784
/* 80136730 00133690  80 C5 00 00 */	lwz r6, 0(r5)
/* 80136734 00133694  38 60 00 00 */	li r3, 0
/* 80136738 00133698  2C 06 00 00 */	cmpwi r6, 0
/* 8013673C 0013369C  40 81 00 40 */	ble lbl_8013677C
/* 80136740 001336A0  2C 06 00 08 */	cmpwi r6, 8
/* 80136744 001336A4  38 86 FF F8 */	addi r4, r6, -8
/* 80136748 001336A8  40 81 00 20 */	ble lbl_80136768
/* 8013674C 001336AC  38 04 00 07 */	addi r0, r4, 7
/* 80136750 001336B0  54 00 E8 FE */	srwi r0, r0, 3
/* 80136754 001336B4  7C 09 03 A6 */	mtctr r0
/* 80136758 001336B8  2C 04 00 00 */	cmpwi r4, 0
/* 8013675C 001336BC  40 81 00 0C */	ble lbl_80136768
lbl_80136760:
/* 80136760 001336C0  38 63 00 08 */	addi r3, r3, 8
/* 80136764 001336C4  42 00 FF FC */	bdnz lbl_80136760
lbl_80136768:
/* 80136768 001336C8  7C 03 30 50 */	subf r0, r3, r6
/* 8013676C 001336CC  7C 09 03 A6 */	mtctr r0
/* 80136770 001336D0  7C 03 30 00 */	cmpw r3, r6
/* 80136774 001336D4  40 80 00 08 */	bge lbl_8013677C
lbl_80136778:
/* 80136778 001336D8  42 00 00 00 */	bdnz lbl_80136778
lbl_8013677C:
/* 8013677C 001336DC  38 00 00 00 */	li r0, 0
/* 80136780 001336E0  90 05 00 00 */	stw r0, 0(r5)
lbl_80136784:
/* 80136784 001336E4  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 80136788 001336E8  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8013678C 001336EC  BB 61 01 2C */	lmw r27, 0x12c(r1)
/* 80136790 001336F0  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80136794 001336F4  7C 08 03 A6 */	mtlr r0
/* 80136798 001336F8  38 21 01 50 */	addi r1, r1, 0x150
/* 8013679C 001336FC  4E 80 00 20 */	blr

.global __ct__12CBSKnockBackFv
__ct__12CBSKnockBackFv:
/* 801367A0 00133700  3C A0 80 3E */	lis r5, __vt__10CBodyState@ha
/* 801367A4 00133704  3C 80 80 3E */	lis r4, __vt__12CBSKnockBack@ha
/* 801367A8 00133708  38 A5 13 18 */	addi r5, r5, __vt__10CBodyState@l
/* 801367AC 0013370C  C0 02 99 FC */	lfs f0, lbl_805AB71C@sda21(r2)
/* 801367B0 00133710  90 A3 00 00 */	stw r5, 0(r3)
/* 801367B4 00133714  38 04 14 50 */	addi r0, r4, __vt__12CBSKnockBack@l
/* 801367B8 00133718  90 03 00 00 */	stw r0, 0(r3)
/* 801367BC 0013371C  D0 03 00 04 */	stfs f0, 4(r3)
/* 801367C0 00133720  D0 03 00 08 */	stfs f0, 8(r3)
/* 801367C4 00133724  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801367C8 00133728  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AB718
lbl_805AB718:
	# ROM: 0x3F7FB8
	.float 0.2

.global lbl_805AB71C
lbl_805AB71C:
	# ROM: 0x3F7FBC
	.4byte 0

.global lbl_805AB720
lbl_805AB720:
	# ROM: 0x3F7FC0
	.4byte 0x3E22F983

.global lbl_805AB724
lbl_805AB724:
	# ROM: 0x3F7FC4
	.float 6.2831855

.global lbl_805AB728
lbl_805AB728:
	# ROM: 0x3F7FC8
	.4byte 0x42652EE0

.global lbl_805AB72C
lbl_805AB72C:
	# ROM: 0x3F7FCC
	.float 1.0

.global lbl_805AB730
lbl_805AB730:
	# ROM: 0x3F7FD0
	.float 0.017453292

.global lbl_805AB734
lbl_805AB734:
	# ROM: 0x3F7FD4
	.4byte 0x40490FDB

.global lbl_805AB738
lbl_805AB738:
	# ROM: 0x3F7FD8
	.float 0.15

.global lbl_805AB73C
lbl_805AB73C:
	# ROM: 0x3F7FDC
	.float 1.1920929E-7

.global lbl_805AB740
lbl_805AB740:
	# ROM: 0x3F7FE0
	.double 4.503601774854144E15
