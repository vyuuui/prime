.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global AdvanceAnim__9IMetaAnimFR11IAnimReaderRC13CCharAnimTime
AdvanceAnim__9IMetaAnimFR11IAnimReaderRC13CCharAnimTime:
/* 802E7104 002E4064  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802E7108 002E4068  7C 08 02 A6 */	mflr r0
/* 802E710C 002E406C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802E7110 002E4070  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802E7114 002E4074  7C 7F 1B 78 */	mr r31, r3
/* 802E7118 002E4078  C0 04 00 00 */	lfs f0, 0(r4)
/* 802E711C 002E407C  80 04 00 04 */	lwz r0, 4(r4)
/* 802E7120 002E4080  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802E7124 002E4084  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7128 002E4088  48 00 00 70 */	b lbl_802E7198
lbl_802E712C:
/* 802E712C 002E408C  7F E4 FB 78 */	mr r4, r31
/* 802E7130 002E4090  38 61 00 18 */	addi r3, r1, 0x18
/* 802E7134 002E4094  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E7138 002E4098  38 A1 00 10 */	addi r5, r1, 0x10
/* 802E713C 002E409C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802E7140 002E40A0  7D 89 03 A6 */	mtctr r12
/* 802E7144 002E40A4  4E 80 04 21 */	bctrl 
/* 802E7148 002E40A8  C0 E1 00 18 */	lfs f7, 0x18(r1)
/* 802E714C 002E40AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E7150 002E40B0  C0 C1 00 20 */	lfs f6, 0x20(r1)
/* 802E7154 002E40B4  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 802E7158 002E40B8  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 802E715C 002E40BC  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 802E7160 002E40C0  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 802E7164 002E40C4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 802E7168 002E40C8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 802E716C 002E40CC  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 802E7170 002E40D0  90 01 00 40 */	stw r0, 0x40(r1)
/* 802E7174 002E40D4  D0 C1 00 44 */	stfs f6, 0x44(r1)
/* 802E7178 002E40D8  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 802E717C 002E40DC  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 802E7180 002E40E0  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 802E7184 002E40E4  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 802E7188 002E40E8  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 802E718C 002E40EC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 802E7190 002E40F0  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 802E7194 002E40F4  90 01 00 14 */	stw r0, 0x14(r1)
lbl_802E7198:
/* 802E7198 002E40F8  C0 0D 9B A4 */	lfs f0, lbl_805A8764@sda21(r13)
/* 802E719C 002E40FC  38 61 00 10 */	addi r3, r1, 0x10
/* 802E71A0 002E4100  80 0D 9B A0 */	lwz r0, lbl_805A8760@sda21(r13)
/* 802E71A4 002E4104  38 81 00 08 */	addi r4, r1, 8
/* 802E71A8 002E4108  D0 01 00 08 */	stfs f0, 8(r1)
/* 802E71AC 002E410C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E71B0 002E4110  48 06 18 BD */	bl __gt__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E71B4 002E4114  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E71B8 002E4118  40 82 FF 74 */	bne lbl_802E712C
/* 802E71BC 002E411C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802E71C0 002E4120  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802E71C4 002E4124  7C 08 03 A6 */	mtlr r0
/* 802E71C8 002E4128  38 21 00 70 */	addi r1, r1, 0x70
/* 802E71CC 002E412C  4E 80 00 20 */	blr 

.global GetTime__9IMetaAnimFRC20CPreAdvanceIndicatorRC11IAnimReader
GetTime__9IMetaAnimFRC20CPreAdvanceIndicatorRC11IAnimReader:
/* 802E71D0 002E4130  94 21 F0 D0 */	stwu r1, -0xf30(r1)
/* 802E71D4 002E4134  7C 08 02 A6 */	mflr r0
/* 802E71D8 002E4138  90 01 0F 34 */	stw r0, 0xf34(r1)
/* 802E71DC 002E413C  BF 61 0F 1C */	stmw r27, 0xf1c(r1)
/* 802E71E0 002E4140  7C 9C 23 78 */	mr r28, r4
/* 802E71E4 002E4144  7C 7F 1B 78 */	mr r31, r3
/* 802E71E8 002E4148  7C BB 2B 78 */	mr r27, r5
/* 802E71EC 002E414C  7F 83 E3 78 */	mr r3, r28
/* 802E71F0 002E4150  48 00 06 75 */	bl IsTime__20CPreAdvanceIndicatorCFv
/* 802E71F4 002E4154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E71F8 002E4158  41 82 00 20 */	beq lbl_802E7218
/* 802E71FC 002E415C  7F 83 E3 78 */	mr r3, r28
/* 802E7200 002E4160  48 00 06 5D */	bl GetTime__20CPreAdvanceIndicatorCFv
/* 802E7204 002E4164  C0 03 00 00 */	lfs f0, 0(r3)
/* 802E7208 002E4168  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802E720C 002E416C  80 03 00 04 */	lwz r0, 4(r3)
/* 802E7210 002E4170  90 1F 00 04 */	stw r0, 4(r31)
/* 802E7214 002E4174  48 00 00 F8 */	b lbl_802E730C
lbl_802E7218:
/* 802E7218 002E4178  3C 60 80 2E */	lis r3, __defctor__12CBoolPOINodeFv@ha
/* 802E721C 002E417C  3C A0 80 03 */	lis r5, __dt__12CBoolPOINodeFv@ha
/* 802E7220 002E4180  38 83 69 E8 */	addi r4, r3, __defctor__12CBoolPOINodeFv@l
/* 802E7224 002E4184  38 C0 00 3C */	li r6, 0x3c
/* 802E7228 002E4188  38 61 00 10 */	addi r3, r1, 0x10
/* 802E722C 002E418C  38 A5 F7 EC */	addi r5, r5, __dt__12CBoolPOINodeFv@l
/* 802E7230 002E4190  38 E0 00 40 */	li r7, 0x40
/* 802E7234 002E4194  48 0A 25 19 */	bl __construct_array
/* 802E7238 002E4198  7F 83 E3 78 */	mr r3, r28
/* 802E723C 002E419C  48 00 05 ED */	bl GetString__20CPreAdvanceIndicatorCFv
/* 802E7240 002E41A0  81 9B 00 00 */	lwz r12, 0(r27)
/* 802E7244 002E41A4  7C 7C 1B 78 */	mr r28, r3
/* 802E7248 002E41A8  7F 64 DB 78 */	mr r4, r27
/* 802E724C 002E41AC  38 61 00 08 */	addi r3, r1, 8
/* 802E7250 002E41B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802E7254 002E41B4  7D 89 03 A6 */	mtctr r12
/* 802E7258 002E41B8  4E 80 04 21 */	bctrl 
/* 802E725C 002E41BC  7F 63 DB 78 */	mr r3, r27
/* 802E7260 002E41C0  38 81 00 08 */	addi r4, r1, 8
/* 802E7264 002E41C4  38 A1 00 10 */	addi r5, r1, 0x10
/* 802E7268 002E41C8  38 C0 00 40 */	li r6, 0x40
/* 802E726C 002E41CC  38 E0 00 00 */	li r7, 0
/* 802E7270 002E41D0  39 00 00 00 */	li r8, 0
/* 802E7274 002E41D4  48 01 6B 85 */	bl GetBoolPOIList__11IAnimReaderCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
/* 802E7278 002E41D8  7C 7E 1B 78 */	mr r30, r3
/* 802E727C 002E41DC  3B A1 00 10 */	addi r29, r1, 0x10
/* 802E7280 002E41E0  3B 60 00 00 */	li r27, 0
/* 802E7284 002E41E4  48 00 00 58 */	b lbl_802E72DC
lbl_802E7288:
/* 802E7288 002E41E8  80 7D 00 08 */	lwz r3, 8(r29)
/* 802E728C 002E41EC  7F 84 E3 78 */	mr r4, r28
/* 802E7290 002E41F0  48 0A 8D 0D */	bl strcmp
/* 802E7294 002E41F4  2C 03 00 00 */	cmpwi r3, 0
/* 802E7298 002E41F8  40 82 00 3C */	bne lbl_802E72D4
/* 802E729C 002E41FC  88 1D 00 38 */	lbz r0, 0x38(r29)
/* 802E72A0 002E4200  28 00 00 00 */	cmplwi r0, 0
/* 802E72A4 002E4204  41 82 00 30 */	beq lbl_802E72D4
/* 802E72A8 002E4208  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 802E72AC 002E420C  3C 60 80 03 */	lis r3, __dt__12CBoolPOINodeFv@ha
/* 802E72B0 002E4210  38 83 F7 EC */	addi r4, r3, __dt__12CBoolPOINodeFv@l
/* 802E72B4 002E4214  38 A0 00 3C */	li r5, 0x3c
/* 802E72B8 002E4218  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802E72BC 002E421C  38 61 00 10 */	addi r3, r1, 0x10
/* 802E72C0 002E4220  38 C0 00 40 */	li r6, 0x40
/* 802E72C4 002E4224  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802E72C8 002E4228  90 1F 00 04 */	stw r0, 4(r31)
/* 802E72CC 002E422C  48 0A 24 09 */	bl __destroy_arr
/* 802E72D0 002E4230  48 00 00 3C */	b lbl_802E730C
lbl_802E72D4:
/* 802E72D4 002E4234  3B BD 00 3C */	addi r29, r29, 0x3c
/* 802E72D8 002E4238  3B 7B 00 01 */	addi r27, r27, 1
lbl_802E72DC:
/* 802E72DC 002E423C  7C 1B F0 40 */	cmplw r27, r30
/* 802E72E0 002E4240  41 80 FF A8 */	blt lbl_802E7288
/* 802E72E4 002E4244  C0 0D 9B A4 */	lfs f0, lbl_805A8764@sda21(r13)
/* 802E72E8 002E4248  3C 60 80 03 */	lis r3, __dt__12CBoolPOINodeFv@ha
/* 802E72EC 002E424C  38 83 F7 EC */	addi r4, r3, __dt__12CBoolPOINodeFv@l
/* 802E72F0 002E4250  38 A0 00 3C */	li r5, 0x3c
/* 802E72F4 002E4254  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802E72F8 002E4258  38 61 00 10 */	addi r3, r1, 0x10
/* 802E72FC 002E425C  38 C0 00 40 */	li r6, 0x40
/* 802E7300 002E4260  80 0D 9B A0 */	lwz r0, lbl_805A8760@sda21(r13)
/* 802E7304 002E4264  90 1F 00 04 */	stw r0, 4(r31)
/* 802E7308 002E4268  48 0A 23 CD */	bl __destroy_arr
lbl_802E730C:
/* 802E730C 002E426C  BB 61 0F 1C */	lmw r27, 0xf1c(r1)
/* 802E7310 002E4270  80 01 0F 34 */	lwz r0, 0xf34(r1)
/* 802E7314 002E4274  7C 08 03 A6 */	mtlr r0
/* 802E7318 002E4278  38 21 0F 30 */	addi r1, r1, 0xf30
/* 802E731C 002E427C  4E 80 00 20 */	blr 

.global PutTo__9IMetaAnimCFR13COutputStream
PutTo__9IMetaAnimCFR13COutputStream:
/* 802E7320 002E4280  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E7324 002E4284  7C 08 02 A6 */	mflr r0
/* 802E7328 002E4288  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E732C 002E428C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E7330 002E4290  7C 9F 23 78 */	mr r31, r4
/* 802E7334 002E4294  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E7338 002E4298  7C 7E 1B 78 */	mr r30, r3
/* 802E733C 002E429C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E7340 002E42A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802E7344 002E42A4  7D 89 03 A6 */	mtctr r12
/* 802E7348 002E42A8  4E 80 04 21 */	bctrl 
/* 802E734C 002E42AC  90 61 00 08 */	stw r3, 8(r1)
/* 802E7350 002E42B0  7F E3 FB 78 */	mr r3, r31
/* 802E7354 002E42B4  48 05 81 65 */	bl FlushShiftRegister__13COutputStreamFv
/* 802E7358 002E42B8  7F E3 FB 78 */	mr r3, r31
/* 802E735C 002E42BC  38 81 00 08 */	addi r4, r1, 8
/* 802E7360 002E42C0  38 A0 00 04 */	li r5, 4
/* 802E7364 002E42C4  48 05 82 45 */	bl DoPut__13COutputStreamFPCvUl
/* 802E7368 002E42C8  7F C3 F3 78 */	mr r3, r30
/* 802E736C 002E42CC  7F E4 FB 78 */	mr r4, r31
/* 802E7370 002E42D0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802E7374 002E42D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802E7378 002E42D8  7D 89 03 A6 */	mtctr r12
/* 802E737C 002E42DC  4E 80 04 21 */	bctrl 
/* 802E7380 002E42E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E7384 002E42E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E7388 002E42E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E738C 002E42EC  7C 08 03 A6 */	mtlr r0
/* 802E7390 002E42F0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E7394 002E42F4  4E 80 00 20 */	blr 

.global GetAnimationTree__9IMetaAnimCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
GetAnimationTree__9IMetaAnimCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders:
/* 802E7398 002E42F8  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 802E739C 002E42FC  7C 08 02 A6 */	mflr r0
/* 802E73A0 002E4300  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 802E73A4 002E4304  93 E1 01 CC */	stw r31, 0x1cc(r1)
/* 802E73A8 002E4308  7C DF 33 78 */	mr r31, r6
/* 802E73AC 002E430C  93 C1 01 C8 */	stw r30, 0x1c8(r1)
/* 802E73B0 002E4310  7C 7E 1B 78 */	mr r30, r3
/* 802E73B4 002E4314  93 A1 01 C4 */	stw r29, 0x1c4(r1)
/* 802E73B8 002E4318  7C BD 2B 78 */	mr r29, r5
/* 802E73BC 002E431C  93 81 01 C0 */	stw r28, 0x1c0(r1)
/* 802E73C0 002E4320  7C 9C 23 78 */	mr r28, r4
/* 802E73C4 002E4324  88 06 00 84 */	lbz r0, 0x84(r6)
/* 802E73C8 002E4328  28 00 00 00 */	cmplwi r0, 0
/* 802E73CC 002E432C  41 82 00 BC */	beq lbl_802E7488
/* 802E73D0 002E4330  38 61 01 38 */	addi r3, r1, 0x138
/* 802E73D4 002E4334  48 00 04 45 */	bl NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
/* 802E73D8 002E4338  7F 84 E3 78 */	mr r4, r28
/* 802E73DC 002E433C  7F A5 EB 78 */	mr r5, r29
/* 802E73E0 002E4340  81 9C 00 00 */	lwz r12, 0(r28)
/* 802E73E4 002E4344  38 61 00 0C */	addi r3, r1, 0xc
/* 802E73E8 002E4348  38 C1 01 38 */	addi r6, r1, 0x138
/* 802E73EC 002E434C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E73F0 002E4350  7D 89 03 A6 */	mtctr r12
/* 802E73F4 002E4354  4E 80 04 21 */	bctrl 
/* 802E73F8 002E4358  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802E73FC 002E435C  38 61 00 0C */	addi r3, r1, 0xc
/* 802E7400 002E4360  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802E7404 002E4364  80 85 00 04 */	lwz r4, 4(r5)
/* 802E7408 002E4368  38 04 00 01 */	addi r0, r4, 1
/* 802E740C 002E436C  90 05 00 04 */	stw r0, 4(r5)
/* 802E7410 002E4370  4B D4 9B 91 */	bl sub_80030fa0
/* 802E7414 002E4374  38 00 00 00 */	li r0, 0
/* 802E7418 002E4378  38 7F 00 44 */	addi r3, r31, 0x44
/* 802E741C 002E437C  98 01 01 BC */	stb r0, 0x1bc(r1)
/* 802E7420 002E4380  98 01 01 78 */	stb r0, 0x178(r1)
/* 802E7424 002E4384  48 00 04 41 */	bl IsTime__20CPreAdvanceIndicatorCFv
/* 802E7428 002E4388  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E742C 002E438C  40 82 00 14 */	bne lbl_802E7440
/* 802E7430 002E4390  38 7F 00 44 */	addi r3, r31, 0x44
/* 802E7434 002E4394  48 00 03 FD */	bl IsString__20CPreAdvanceIndicatorCFv
/* 802E7438 002E4398  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E743C 002E439C  41 82 00 28 */	beq lbl_802E7464
lbl_802E7440:
/* 802E7440 002E43A0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 802E7444 002E43A4  38 61 00 20 */	addi r3, r1, 0x20
/* 802E7448 002E43A8  38 9F 00 44 */	addi r4, r31, 0x44
/* 802E744C 002E43AC  83 E5 00 00 */	lwz r31, 0(r5)
/* 802E7450 002E43B0  7F E5 FB 78 */	mr r5, r31
/* 802E7454 002E43B4  4B FF FD 7D */	bl GetTime__9IMetaAnimFRC20CPreAdvanceIndicatorRC11IAnimReader
/* 802E7458 002E43B8  7F E3 FB 78 */	mr r3, r31
/* 802E745C 002E43BC  38 81 00 20 */	addi r4, r1, 0x20
/* 802E7460 002E43C0  4B FF FC A5 */	bl AdvanceAnim__9IMetaAnimFR11IAnimReaderRC13CCharAnimTime
lbl_802E7464:
/* 802E7464 002E43C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E7468 002E43C8  38 61 00 14 */	addi r3, r1, 0x14
/* 802E746C 002E43CC  90 1E 00 00 */	stw r0, 0(r30)
/* 802E7470 002E43D0  80 BE 00 00 */	lwz r5, 0(r30)
/* 802E7474 002E43D4  80 85 00 04 */	lwz r4, 4(r5)
/* 802E7478 002E43D8  38 04 00 01 */	addi r0, r4, 1
/* 802E747C 002E43DC  90 05 00 04 */	stw r0, 4(r5)
/* 802E7480 002E43E0  4B D4 9B 21 */	bl sub_80030fa0
/* 802E7484 002E43E4  48 00 00 FC */	b lbl_802E7580
lbl_802E7488:
/* 802E7488 002E43E8  88 1F 00 40 */	lbz r0, 0x40(r31)
/* 802E748C 002E43EC  28 00 00 00 */	cmplwi r0, 0
/* 802E7490 002E43F0  41 82 00 BC */	beq lbl_802E754C
/* 802E7494 002E43F4  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802E7498 002E43F8  48 00 03 81 */	bl NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
/* 802E749C 002E43FC  7F 84 E3 78 */	mr r4, r28
/* 802E74A0 002E4400  7F A5 EB 78 */	mr r5, r29
/* 802E74A4 002E4404  81 9C 00 00 */	lwz r12, 0(r28)
/* 802E74A8 002E4408  38 61 00 08 */	addi r3, r1, 8
/* 802E74AC 002E440C  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 802E74B0 002E4410  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E74B4 002E4414  7D 89 03 A6 */	mtctr r12
/* 802E74B8 002E4418  4E 80 04 21 */	bctrl 
/* 802E74BC 002E441C  80 A1 00 08 */	lwz r5, 8(r1)
/* 802E74C0 002E4420  38 61 00 08 */	addi r3, r1, 8
/* 802E74C4 002E4424  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802E74C8 002E4428  80 85 00 04 */	lwz r4, 4(r5)
/* 802E74CC 002E442C  38 04 00 01 */	addi r0, r4, 1
/* 802E74D0 002E4430  90 05 00 04 */	stw r0, 4(r5)
/* 802E74D4 002E4434  4B D4 9A CD */	bl sub_80030fa0
/* 802E74D8 002E4438  38 00 00 00 */	li r0, 0
/* 802E74DC 002E443C  7F E3 FB 78 */	mr r3, r31
/* 802E74E0 002E4440  98 01 01 34 */	stb r0, 0x134(r1)
/* 802E74E4 002E4444  98 01 00 F0 */	stb r0, 0xf0(r1)
/* 802E74E8 002E4448  48 00 03 7D */	bl IsTime__20CPreAdvanceIndicatorCFv
/* 802E74EC 002E444C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E74F0 002E4450  40 82 00 14 */	bne lbl_802E7504
/* 802E74F4 002E4454  7F E3 FB 78 */	mr r3, r31
/* 802E74F8 002E4458  48 00 03 39 */	bl IsString__20CPreAdvanceIndicatorCFv
/* 802E74FC 002E445C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E7500 002E4460  41 82 00 28 */	beq lbl_802E7528
lbl_802E7504:
/* 802E7504 002E4464  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 802E7508 002E4468  7F E4 FB 78 */	mr r4, r31
/* 802E750C 002E446C  38 61 00 18 */	addi r3, r1, 0x18
/* 802E7510 002E4470  83 E5 00 00 */	lwz r31, 0(r5)
/* 802E7514 002E4474  7F E5 FB 78 */	mr r5, r31
/* 802E7518 002E4478  4B FF FC B9 */	bl GetTime__9IMetaAnimFRC20CPreAdvanceIndicatorRC11IAnimReader
/* 802E751C 002E447C  7F E3 FB 78 */	mr r3, r31
/* 802E7520 002E4480  38 81 00 18 */	addi r4, r1, 0x18
/* 802E7524 002E4484  4B FF FB E1 */	bl AdvanceAnim__9IMetaAnimFR11IAnimReaderRC13CCharAnimTime
lbl_802E7528:
/* 802E7528 002E4488  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802E752C 002E448C  38 61 00 10 */	addi r3, r1, 0x10
/* 802E7530 002E4490  90 1E 00 00 */	stw r0, 0(r30)
/* 802E7534 002E4494  80 BE 00 00 */	lwz r5, 0(r30)
/* 802E7538 002E4498  80 85 00 04 */	lwz r4, 4(r5)
/* 802E753C 002E449C  38 04 00 01 */	addi r0, r4, 1
/* 802E7540 002E44A0  90 05 00 04 */	stw r0, 4(r5)
/* 802E7544 002E44A4  4B D4 9A 5D */	bl sub_80030fa0
/* 802E7548 002E44A8  48 00 00 38 */	b lbl_802E7580
lbl_802E754C:
/* 802E754C 002E44AC  38 61 00 28 */	addi r3, r1, 0x28
/* 802E7550 002E44B0  48 00 02 C9 */	bl NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
/* 802E7554 002E44B4  7F 84 E3 78 */	mr r4, r28
/* 802E7558 002E44B8  7F C3 F3 78 */	mr r3, r30
/* 802E755C 002E44BC  81 9C 00 00 */	lwz r12, 0(r28)
/* 802E7560 002E44C0  7F A5 EB 78 */	mr r5, r29
/* 802E7564 002E44C4  38 C1 00 28 */	addi r6, r1, 0x28
/* 802E7568 002E44C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E756C 002E44CC  7D 89 03 A6 */	mtctr r12
/* 802E7570 002E44D0  4E 80 04 21 */	bctrl 
/* 802E7574 002E44D4  38 00 00 00 */	li r0, 0
/* 802E7578 002E44D8  98 01 00 AC */	stb r0, 0xac(r1)
/* 802E757C 002E44DC  98 01 00 68 */	stb r0, 0x68(r1)
lbl_802E7580:
/* 802E7580 002E44E0  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 802E7584 002E44E4  83 E1 01 CC */	lwz r31, 0x1cc(r1)
/* 802E7588 002E44E8  83 C1 01 C8 */	lwz r30, 0x1c8(r1)
/* 802E758C 002E44EC  83 A1 01 C4 */	lwz r29, 0x1c4(r1)
/* 802E7590 002E44F0  83 81 01 C0 */	lwz r28, 0x1c0(r1)
/* 802E7594 002E44F4  7C 08 03 A6 */	mtlr r0
/* 802E7598 002E44F8  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 802E759C 002E44FC  4E 80 00 20 */	blr 

.global PreAdvanceForAll__24CMetaAnimTreeBuildOrdersFRC20CPreAdvanceIndicator
PreAdvanceForAll__24CMetaAnimTreeBuildOrdersFRC20CPreAdvanceIndicator:
/* 802E75A0 002E4500  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802E75A4 002E4504  38 00 00 00 */	li r0, 0
/* 802E75A8 002E4508  28 00 00 00 */	cmplwi r0, 0
/* 802E75AC 002E450C  BF 21 00 94 */	stmw r25, 0x94(r1)
/* 802E75B0 002E4510  98 01 00 48 */	stb r0, 0x48(r1)
/* 802E75B4 002E4514  98 01 00 8C */	stb r0, 0x8c(r1)
/* 802E75B8 002E4518  40 82 00 98 */	bne lbl_802E7650
/* 802E75BC 002E451C  34 C1 00 4C */	addic. r6, r1, 0x4c
/* 802E75C0 002E4520  41 82 00 84 */	beq lbl_802E7644
/* 802E75C4 002E4524  88 04 00 00 */	lbz r0, 0(r4)
/* 802E75C8 002E4528  98 06 00 00 */	stb r0, 0(r6)
/* 802E75CC 002E452C  C0 04 00 04 */	lfs f0, 4(r4)
/* 802E75D0 002E4530  D0 06 00 04 */	stfs f0, 4(r6)
/* 802E75D4 002E4534  80 04 00 08 */	lwz r0, 8(r4)
/* 802E75D8 002E4538  90 06 00 08 */	stw r0, 8(r6)
/* 802E75DC 002E453C  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802E75E0 002E4540  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802E75E4 002E4544  90 A6 00 0C */	stw r5, 0xc(r6)
/* 802E75E8 002E4548  90 06 00 10 */	stw r0, 0x10(r6)
/* 802E75EC 002E454C  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 802E75F0 002E4550  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802E75F4 002E4554  90 A6 00 14 */	stw r5, 0x14(r6)
/* 802E75F8 002E4558  90 06 00 18 */	stw r0, 0x18(r6)
/* 802E75FC 002E455C  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 802E7600 002E4560  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802E7604 002E4564  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 802E7608 002E4568  90 06 00 20 */	stw r0, 0x20(r6)
/* 802E760C 002E456C  80 A4 00 24 */	lwz r5, 0x24(r4)
/* 802E7610 002E4570  80 04 00 28 */	lwz r0, 0x28(r4)
/* 802E7614 002E4574  90 A6 00 24 */	stw r5, 0x24(r6)
/* 802E7618 002E4578  90 06 00 28 */	stw r0, 0x28(r6)
/* 802E761C 002E457C  80 A4 00 2C */	lwz r5, 0x2c(r4)
/* 802E7620 002E4580  80 04 00 30 */	lwz r0, 0x30(r4)
/* 802E7624 002E4584  90 A6 00 2C */	stw r5, 0x2c(r6)
/* 802E7628 002E4588  90 06 00 30 */	stw r0, 0x30(r6)
/* 802E762C 002E458C  80 A4 00 34 */	lwz r5, 0x34(r4)
/* 802E7630 002E4590  80 04 00 38 */	lwz r0, 0x38(r4)
/* 802E7634 002E4594  90 A6 00 34 */	stw r5, 0x34(r6)
/* 802E7638 002E4598  90 06 00 38 */	stw r0, 0x38(r6)
/* 802E763C 002E459C  A0 04 00 3C */	lhz r0, 0x3c(r4)
/* 802E7640 002E45A0  B0 06 00 3C */	sth r0, 0x3c(r6)
lbl_802E7644:
/* 802E7644 002E45A4  38 00 00 01 */	li r0, 1
/* 802E7648 002E45A8  98 01 00 8C */	stb r0, 0x8c(r1)
/* 802E764C 002E45AC  48 00 00 84 */	b lbl_802E76D0
lbl_802E7650:
/* 802E7650 002E45B0  8B 24 00 00 */	lbz r25, 0(r4)
/* 802E7654 002E45B4  83 44 00 04 */	lwz r26, 4(r4)
/* 802E7658 002E45B8  83 64 00 08 */	lwz r27, 8(r4)
/* 802E765C 002E45BC  83 84 00 0C */	lwz r28, 0xc(r4)
/* 802E7660 002E45C0  83 A4 00 10 */	lwz r29, 0x10(r4)
/* 802E7664 002E45C4  83 C4 00 14 */	lwz r30, 0x14(r4)
/* 802E7668 002E45C8  83 E4 00 18 */	lwz r31, 0x18(r4)
/* 802E766C 002E45CC  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 802E7670 002E45D0  81 64 00 20 */	lwz r11, 0x20(r4)
/* 802E7674 002E45D4  81 44 00 24 */	lwz r10, 0x24(r4)
/* 802E7678 002E45D8  81 24 00 28 */	lwz r9, 0x28(r4)
/* 802E767C 002E45DC  81 04 00 2C */	lwz r8, 0x2c(r4)
/* 802E7680 002E45E0  80 E4 00 30 */	lwz r7, 0x30(r4)
/* 802E7684 002E45E4  80 C4 00 34 */	lwz r6, 0x34(r4)
/* 802E7688 002E45E8  80 A4 00 38 */	lwz r5, 0x38(r4)
/* 802E768C 002E45EC  A0 04 00 3C */	lhz r0, 0x3c(r4)
/* 802E7690 002E45F0  9B 21 00 4C */	stb r25, 0x4c(r1)
/* 802E7694 002E45F4  93 41 00 50 */	stw r26, 0x50(r1)
/* 802E7698 002E45F8  93 61 00 54 */	stw r27, 0x54(r1)
/* 802E769C 002E45FC  93 81 00 58 */	stw r28, 0x58(r1)
/* 802E76A0 002E4600  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 802E76A4 002E4604  93 C1 00 60 */	stw r30, 0x60(r1)
/* 802E76A8 002E4608  93 E1 00 64 */	stw r31, 0x64(r1)
/* 802E76AC 002E460C  91 81 00 68 */	stw r12, 0x68(r1)
/* 802E76B0 002E4610  91 61 00 6C */	stw r11, 0x6c(r1)
/* 802E76B4 002E4614  91 41 00 70 */	stw r10, 0x70(r1)
/* 802E76B8 002E4618  91 21 00 74 */	stw r9, 0x74(r1)
/* 802E76BC 002E461C  91 01 00 78 */	stw r8, 0x78(r1)
/* 802E76C0 002E4620  90 E1 00 7C */	stw r7, 0x7c(r1)
/* 802E76C4 002E4624  90 C1 00 80 */	stw r6, 0x80(r1)
/* 802E76C8 002E4628  90 A1 00 84 */	stw r5, 0x84(r1)
/* 802E76CC 002E462C  B0 01 00 88 */	sth r0, 0x88(r1)
lbl_802E76D0:
/* 802E76D0 002E4630  88 01 00 48 */	lbz r0, 0x48(r1)
/* 802E76D4 002E4634  28 00 00 00 */	cmplwi r0, 0
/* 802E76D8 002E4638  98 03 00 40 */	stb r0, 0x40(r3)
/* 802E76DC 002E463C  41 82 00 8C */	beq lbl_802E7768
/* 802E76E0 002E4640  28 03 00 00 */	cmplwi r3, 0
/* 802E76E4 002E4644  41 82 00 84 */	beq lbl_802E7768
/* 802E76E8 002E4648  88 01 00 08 */	lbz r0, 8(r1)
/* 802E76EC 002E464C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802E76F0 002E4650  98 03 00 00 */	stb r0, 0(r3)
/* 802E76F4 002E4654  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802E76F8 002E4658  D0 03 00 04 */	stfs f0, 4(r3)
/* 802E76FC 002E465C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E7700 002E4660  90 83 00 08 */	stw r4, 8(r3)
/* 802E7704 002E4664  80 81 00 18 */	lwz r4, 0x18(r1)
/* 802E7708 002E4668  90 03 00 0C */	stw r0, 0xc(r3)
/* 802E770C 002E466C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E7710 002E4670  90 83 00 10 */	stw r4, 0x10(r3)
/* 802E7714 002E4674  80 81 00 20 */	lwz r4, 0x20(r1)
/* 802E7718 002E4678  90 03 00 14 */	stw r0, 0x14(r3)
/* 802E771C 002E467C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E7720 002E4680  90 83 00 18 */	stw r4, 0x18(r3)
/* 802E7724 002E4684  80 81 00 28 */	lwz r4, 0x28(r1)
/* 802E7728 002E4688  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802E772C 002E468C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802E7730 002E4690  90 83 00 20 */	stw r4, 0x20(r3)
/* 802E7734 002E4694  80 81 00 30 */	lwz r4, 0x30(r1)
/* 802E7738 002E4698  90 03 00 24 */	stw r0, 0x24(r3)
/* 802E773C 002E469C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E7740 002E46A0  90 83 00 28 */	stw r4, 0x28(r3)
/* 802E7744 002E46A4  80 81 00 38 */	lwz r4, 0x38(r1)
/* 802E7748 002E46A8  90 03 00 2C */	stw r0, 0x2c(r3)
/* 802E774C 002E46AC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802E7750 002E46B0  90 83 00 30 */	stw r4, 0x30(r3)
/* 802E7754 002E46B4  80 81 00 40 */	lwz r4, 0x40(r1)
/* 802E7758 002E46B8  90 03 00 34 */	stw r0, 0x34(r3)
/* 802E775C 002E46BC  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 802E7760 002E46C0  90 83 00 38 */	stw r4, 0x38(r3)
/* 802E7764 002E46C4  B0 03 00 3C */	sth r0, 0x3c(r3)
lbl_802E7768:
/* 802E7768 002E46C8  88 01 00 8C */	lbz r0, 0x8c(r1)
/* 802E776C 002E46CC  28 00 00 00 */	cmplwi r0, 0
/* 802E7770 002E46D0  98 03 00 84 */	stb r0, 0x84(r3)
/* 802E7774 002E46D4  41 82 00 8C */	beq lbl_802E7800
/* 802E7778 002E46D8  34 83 00 44 */	addic. r4, r3, 0x44
/* 802E777C 002E46DC  41 82 00 84 */	beq lbl_802E7800
/* 802E7780 002E46E0  88 01 00 4C */	lbz r0, 0x4c(r1)
/* 802E7784 002E46E4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 802E7788 002E46E8  98 04 00 00 */	stb r0, 0(r4)
/* 802E778C 002E46EC  80 61 00 54 */	lwz r3, 0x54(r1)
/* 802E7790 002E46F0  D0 04 00 04 */	stfs f0, 4(r4)
/* 802E7794 002E46F4  80 01 00 58 */	lwz r0, 0x58(r1)
/* 802E7798 002E46F8  90 64 00 08 */	stw r3, 8(r4)
/* 802E779C 002E46FC  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 802E77A0 002E4700  90 04 00 0C */	stw r0, 0xc(r4)
/* 802E77A4 002E4704  80 01 00 60 */	lwz r0, 0x60(r1)
/* 802E77A8 002E4708  90 64 00 10 */	stw r3, 0x10(r4)
/* 802E77AC 002E470C  80 61 00 64 */	lwz r3, 0x64(r1)
/* 802E77B0 002E4710  90 04 00 14 */	stw r0, 0x14(r4)
/* 802E77B4 002E4714  80 01 00 68 */	lwz r0, 0x68(r1)
/* 802E77B8 002E4718  90 64 00 18 */	stw r3, 0x18(r4)
/* 802E77BC 002E471C  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 802E77C0 002E4720  90 04 00 1C */	stw r0, 0x1c(r4)
/* 802E77C4 002E4724  80 01 00 70 */	lwz r0, 0x70(r1)
/* 802E77C8 002E4728  90 64 00 20 */	stw r3, 0x20(r4)
/* 802E77CC 002E472C  80 61 00 74 */	lwz r3, 0x74(r1)
/* 802E77D0 002E4730  90 04 00 24 */	stw r0, 0x24(r4)
/* 802E77D4 002E4734  80 01 00 78 */	lwz r0, 0x78(r1)
/* 802E77D8 002E4738  90 64 00 28 */	stw r3, 0x28(r4)
/* 802E77DC 002E473C  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 802E77E0 002E4740  90 04 00 2C */	stw r0, 0x2c(r4)
/* 802E77E4 002E4744  80 01 00 80 */	lwz r0, 0x80(r1)
/* 802E77E8 002E4748  90 64 00 30 */	stw r3, 0x30(r4)
/* 802E77EC 002E474C  80 61 00 84 */	lwz r3, 0x84(r1)
/* 802E77F0 002E4750  90 04 00 34 */	stw r0, 0x34(r4)
/* 802E77F4 002E4754  A0 01 00 88 */	lhz r0, 0x88(r1)
/* 802E77F8 002E4758  90 64 00 38 */	stw r3, 0x38(r4)
/* 802E77FC 002E475C  B0 04 00 3C */	sth r0, 0x3c(r4)
lbl_802E7800:
/* 802E7800 002E4760  BB 21 00 94 */	lmw r25, 0x94(r1)
/* 802E7804 002E4764  38 00 00 00 */	li r0, 0
/* 802E7808 002E4768  98 01 00 8C */	stb r0, 0x8c(r1)
/* 802E780C 002E476C  98 01 00 48 */	stb r0, 0x48(r1)
/* 802E7810 002E4770  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802E7814 002E4774  4E 80 00 20 */	blr 

.global NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv:
/* 802E7818 002E4778  38 00 00 00 */	li r0, 0
/* 802E781C 002E477C  98 03 00 40 */	stb r0, 0x40(r3)
/* 802E7820 002E4780  98 03 00 84 */	stb r0, 0x84(r3)
/* 802E7824 002E4784  4E 80 00 20 */	blr 

.global GetString__20CPreAdvanceIndicatorCFv
GetString__20CPreAdvanceIndicatorCFv:
/* 802E7828 002E4788  38 63 00 0C */	addi r3, r3, 0xc
/* 802E782C 002E478C  4E 80 00 20 */	blr 

.global IsString__20CPreAdvanceIndicatorCFv
IsString__20CPreAdvanceIndicatorCFv:
/* 802E7830 002E4790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E7834 002E4794  7C 08 02 A6 */	mflr r0
/* 802E7838 002E4798  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E783C 002E479C  48 00 00 29 */	bl IsTime__20CPreAdvanceIndicatorCFv
/* 802E7840 002E47A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802E7844 002E47A4  7C 00 00 34 */	cntlzw r0, r0
/* 802E7848 002E47A8  54 03 D9 7E */	srwi r3, r0, 5
/* 802E784C 002E47AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E7850 002E47B0  7C 08 03 A6 */	mtlr r0
/* 802E7854 002E47B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E7858 002E47B8  4E 80 00 20 */	blr 

.global GetTime__20CPreAdvanceIndicatorCFv
GetTime__20CPreAdvanceIndicatorCFv:
/* 802E785C 002E47BC  38 63 00 04 */	addi r3, r3, 4
/* 802E7860 002E47C0  4E 80 00 20 */	blr 

.global IsTime__20CPreAdvanceIndicatorCFv
IsTime__20CPreAdvanceIndicatorCFv:
/* 802E7864 002E47C4  88 63 00 00 */	lbz r3, 0(r3)
/* 802E7868 002E47C8  4E 80 00 20 */	blr