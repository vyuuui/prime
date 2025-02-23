.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CCubeMaterial_cpp

.section .data
.balign 8

.global lbl_803EF610
lbl_803EF610:
	# ROM: 0x3EC610
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0

.global lbl_803EF640
lbl_803EF640:
	# ROM: 0x3EC640
	.4byte lbl_80347A5C
	.4byte lbl_80347AD4
	.4byte lbl_80347B2C
	.4byte lbl_80347B6C
	.4byte lbl_80347C44
	.4byte lbl_80347C44
	.4byte lbl_80347D0C
	.4byte lbl_80347E5C

.section .sdata
.balign 8

.global lbl_805A8928
lbl_805A8928:
	# ROM: 0x3F62C8
	.4byte 0xFFFFFFFF

.global lbl_805A892C
lbl_805A892C:
	# ROM: 0x3F62CC
	.float 1.0

.global lbl_805A8930
lbl_805A8930:
	# ROM: 0x3F62D0
	.float 1.0

.global lbl_805A8934
lbl_805A8934:
	# ROM: 0x3F62D4
	.4byte 0xFFFFFFFF

.section .bss
.balign 8

.comm sViewingFrom__13CCubeMaterial, 0xC, 4
.lcomm sPlayerPosition, 0xC, 4
.lcomm sTextureProjectionTransform, 0x34, 4

.section .sbss, "wa"
.balign 8

.global sMaterialCachedState
sMaterialCachedState:
	.skip 0x4
.global sLastModelCached__13CCubeMaterial
sLastModelCached__13CCubeMaterial:
	.skip 0x4
.global sRenderingModel__13CCubeMaterial
sRenderingModel__13CCubeMaterial:
	.skip 0x4
.global sLastMaterialCached
sLastMaterialCached:
	.skip 0x4
.global sReflectionAlpha
sReflectionAlpha:
	.skip 0x4
.global sLastTime
sLastTime:
	.skip 0x4
.global sbRenderModelBlack
sbRenderModelBlack:
	.skip 0x1
.global lbl_805A9559
lbl_805A9559:
	.skip 0x1
.global sbRenderModelShadow
sbRenderModelShadow:
	.skip 0x2
.global spShadowTexture
spShadowTexture:
	.skip 0x4
.global sChannel0DisableLightMask
sChannel0DisableLightMask:
	.skip 0x1
.global sChannel1EnableLightMask
sChannel1EnableLightMask:
	.skip 0x7

.section .text, "ax"

.global GetCompressedBlend__13CCubeMaterialCFv
GetCompressedBlend__13CCubeMaterialCFv:
/* 8034574C 003426AC  80 83 00 00 */	lwz r4, 0(r3)
/* 80345750 003426B0  80 04 00 00 */	lwz r0, 0(r4)
/* 80345754 003426B4  80 64 00 04 */	lwz r3, 4(r4)
/* 80345758 003426B8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8034575C 003426BC  54 63 10 3A */	slwi r3, r3, 2
/* 80345760 003426C0  38 A3 00 10 */	addi r5, r3, 0x10
/* 80345764 003426C4  7C A4 2A 14 */	add r5, r4, r5
/* 80345768 003426C8  41 82 00 14 */	beq lbl_8034577C
/* 8034576C 003426CC  80 65 00 00 */	lwz r3, 0(r5)
/* 80345770 003426D0  38 03 00 01 */	addi r0, r3, 1
/* 80345774 003426D4  54 00 10 3A */	slwi r0, r0, 2
/* 80345778 003426D8  7C A5 02 14 */	add r5, r5, r0
lbl_8034577C:
/* 8034577C 003426DC  80 65 00 00 */	lwz r3, 0(r5)
/* 80345780 003426E0  4E 80 00 20 */	blr

.global DisableShadowMaps__10CCubeModelFv
DisableShadowMaps__10CCubeModelFv:
/* 80345784 003426E4  38 00 00 00 */	li r0, 0
/* 80345788 003426E8  98 0D A9 9A */	stb r0, sbRenderModelShadow@sda21(r13)
/* 8034578C 003426EC  4E 80 00 20 */	blr

.global EnableShadowMaps__10CCubeModelFPC8CTextureRC12CTransform4fUcUc
EnableShadowMaps__10CCubeModelFPC8CTextureRC12CTransform4fUcUc:
/* 80345790 003426F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80345794 003426F4  7C 08 02 A6 */	mflr r0
/* 80345798 003426F8  3C E0 80 4C */	lis r7, sTextureProjectionTransform@ha
/* 8034579C 003426FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803457A0 00342700  38 00 00 01 */	li r0, 1
/* 803457A4 00342704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803457A8 00342708  7C DF 33 78 */	mr r31, r6
/* 803457AC 0034270C  93 C1 00 08 */	stw r30, 8(r1)
/* 803457B0 00342710  7C BE 2B 78 */	mr r30, r5
/* 803457B4 00342714  98 0D A9 9A */	stb r0, sbRenderModelShadow@sda21(r13)
/* 803457B8 00342718  38 07 FF 5C */	addi r0, r7, sTextureProjectionTransform@l
/* 803457BC 0034271C  90 6D A9 9C */	stw r3, spShadowTexture@sda21(r13)
/* 803457C0 00342720  7C 03 03 78 */	mr r3, r0
/* 803457C4 00342724  4B FC D3 7D */	bl __as__12CTransform4fFRC12CTransform4f
/* 803457C8 00342728  9B CD A9 A0 */	stb r30, sChannel0DisableLightMask@sda21(r13)
/* 803457CC 0034272C  9B ED A9 A1 */	stb r31, sChannel1EnableLightMask@sda21(r13)
/* 803457D0 00342730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803457D4 00342734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803457D8 00342738  83 C1 00 08 */	lwz r30, 8(r1)
/* 803457DC 0034273C  7C 08 03 A6 */	mtlr r0
/* 803457E0 00342740  38 21 00 10 */	addi r1, r1, 0x10
/* 803457E4 00342744  4E 80 00 20 */	blr

.global SetRenderModelBlack__10CCubeModelFb
SetRenderModelBlack__10CCubeModelFb:
/* 803457E8 00342748  38 00 00 00 */	li r0, 0
/* 803457EC 0034274C  98 6D A9 98 */	stb r3, sbRenderModelBlack@sda21(r13)
/* 803457F0 00342750  98 0D A9 99 */	stb r0, lbl_805A9559@sda21(r13)
/* 803457F4 00342754  4E 80 00 20 */	blr

.global SetNewPlayerPositionAndTime__10CCubeModelFRC9CVector3fRC10CStopwatch
SetNewPlayerPositionAndTime__10CCubeModelFRC9CVector3fRC10CStopwatch:
/* 803457F8 00342758  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803457FC 0034275C  7C 08 02 A6 */	mflr r0
/* 80345800 00342760  3C 80 80 4C */	lis r4, sPlayerPosition@ha
/* 80345804 00342764  90 01 00 24 */	stw r0, 0x24(r1)
/* 80345808 00342768  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034580C 0034276C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80345810 00342770  C0 43 00 00 */	lfs f2, 0(r3)
/* 80345814 00342774  C0 23 00 04 */	lfs f1, 4(r3)
/* 80345818 00342778  D4 44 FF 50 */	stfsu f2, sPlayerPosition@l(r4)
/* 8034581C 0034277C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80345820 00342780  D0 24 00 04 */	stfs f1, 4(r4)
/* 80345824 00342784  D0 04 00 08 */	stfs f0, 8(r4)
/* 80345828 00342788  48 00 01 19 */	bl KillCachedViewDepState__13CCubeMaterialFv
/* 8034582C 0034278C  48 03 FB 7D */	bl OSGetTime
/* 80345830 00342790  3C A0 80 5A */	lis r5, mData__10CStopwatch@ha
/* 80345834 00342794  38 C5 FD 30 */	addi r6, r5, mData__10CStopwatch@l
/* 80345838 00342798  80 A6 00 08 */	lwz r5, 8(r6)
/* 8034583C 0034279C  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 80345840 003427A0  48 04 43 8D */	bl __div2i
/* 80345844 003427A4  38 A0 00 00 */	li r5, 0
/* 80345848 003427A8  38 C0 03 E8 */	li r6, 0x3e8
/* 8034584C 003427AC  48 04 43 81 */	bl __div2i
/* 80345850 003427B0  C0 22 CB C4 */	lfs f1, lbl_805AE8E4@sda21(r2)
/* 80345854 003427B4  7C 9E 23 78 */	mr r30, r4
/* 80345858 003427B8  C0 02 CB C8 */	lfs f0, lbl_805AE8E8@sda21(r2)
/* 8034585C 003427BC  7C 7F 1B 78 */	mr r31, r3
/* 80345860 003427C0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80345864 003427C4  48 04 40 F1 */	bl __cvt_fp2unsigned
/* 80345868 003427C8  7C 66 1B 78 */	mr r6, r3
/* 8034586C 003427CC  7F E3 FB 78 */	mr r3, r31
/* 80345870 003427D0  7F C4 F3 78 */	mr r4, r30
/* 80345874 003427D4  38 A0 00 00 */	li r5, 0
/* 80345878 003427D8  48 04 45 71 */	bl __mod2i
/* 8034587C 003427DC  3C 00 43 30 */	lis r0, 0x4330
/* 80345880 003427E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80345884 003427E4  C8 62 CB F0 */	lfd f3, lbl_805AE910@sda21(r2)
/* 80345888 003427E8  90 01 00 08 */	stw r0, 8(r1)
/* 8034588C 003427EC  C0 42 CB CC */	lfs f2, lbl_805AE8EC@sda21(r2)
/* 80345890 003427F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80345894 003427F4  C0 22 CB E0 */	lfs f1, lbl_805AE900@sda21(r2)
/* 80345898 003427F8  EC 60 18 28 */	fsubs f3, f0, f3
/* 8034589C 003427FC  C0 02 CB DC */	lfs f0, lbl_805AE8FC@sda21(r2)
/* 803458A0 00342800  EC 43 10 24 */	fdivs f2, f3, f2
/* 803458A4 00342804  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 803458A8 00342808  D0 4D A9 94 */	stfs f2, sLastTime@sda21(r13)
/* 803458AC 0034280C  48 04 F2 31 */	bl sin
/* 803458B0 00342810  C0 02 CB D8 */	lfs f0, lbl_805AE8F8@sda21(r2)
/* 803458B4 00342814  C8 82 CB D0 */	lfd f4, lbl_805AE8F0@sda21(r2)
/* 803458B8 00342818  C0 4D A9 94 */	lfs f2, sLastTime@sda21(r13)
/* 803458BC 0034281C  FC 60 20 7C */	fnmsub f3, f0, f1, f4
/* 803458C0 00342820  C0 22 CB E0 */	lfs f1, lbl_805AE900@sda21(r2)
/* 803458C4 00342824  C0 02 CB E8 */	lfs f0, lbl_805AE908@sda21(r2)
/* 803458C8 00342828  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 803458CC 0034282C  FC 04 18 24 */	fdiv f0, f4, f3
/* 803458D0 00342830  FC 00 00 18 */	frsp f0, f0
/* 803458D4 00342834  D0 0D 9D 6C */	stfs f0, lbl_805A892C@sda21(r13)
/* 803458D8 00342838  48 04 F2 05 */	bl sin
/* 803458DC 0034283C  C0 02 CB E4 */	lfs f0, lbl_805AE904@sda21(r2)
/* 803458E0 00342840  C8 42 CB D0 */	lfd f2, lbl_805AE8F0@sda21(r2)
/* 803458E4 00342844  FC 00 10 7C */	fnmsub f0, f0, f1, f2
/* 803458E8 00342848  FC 02 00 24 */	fdiv f0, f2, f0
/* 803458EC 0034284C  FC 00 00 18 */	frsp f0, f0
/* 803458F0 00342850  D0 0D 9D 70 */	stfs f0, lbl_805A8930@sda21(r13)
/* 803458F4 00342854  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803458F8 00342858  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803458FC 0034285C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80345900 00342860  7C 08 03 A6 */	mtlr r0
/* 80345904 00342864  38 21 00 20 */	addi r1, r1, 0x20
/* 80345908 00342868  4E 80 00 20 */	blr

.global ResetCachedMaterials__13CCubeMaterialFv
ResetCachedMaterials__13CCubeMaterialFv:
/* 8034590C 0034286C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80345910 00342870  7C 08 02 A6 */	mflr r0
/* 80345914 00342874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80345918 00342878  48 00 00 29 */	bl KillCachedViewDepState__13CCubeMaterialFv
/* 8034591C 0034287C  38 60 00 00 */	li r3, 0
/* 80345920 00342880  38 00 FF FF */	li r0, -1
/* 80345924 00342884  90 6D A9 88 */	stw r3, sRenderingModel__13CCubeMaterial@sda21(r13)
/* 80345928 00342888  90 6D A9 8C */	stw r3, sLastMaterialCached@sda21(r13)
/* 8034592C 0034288C  90 0D 9D 68 */	stw r0, lbl_805A8928@sda21(r13)
/* 80345930 00342890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80345934 00342894  7C 08 03 A6 */	mtlr r0
/* 80345938 00342898  38 21 00 10 */	addi r1, r1, 0x10
/* 8034593C 0034289C  4E 80 00 20 */	blr

.global KillCachedViewDepState__13CCubeMaterialFv
KillCachedViewDepState__13CCubeMaterialFv:
/* 80345940 003428A0  38 00 00 00 */	li r0, 0
/* 80345944 003428A4  90 0D A9 84 */	stw r0, sLastModelCached__13CCubeMaterial@sda21(r13)
/* 80345948 003428A8  4E 80 00 20 */	blr

.global EnsureViewDepStateCached__13CCubeMaterialFPC12CCubeSurface
EnsureViewDepStateCached__13CCubeMaterialFPC12CCubeSurface:
/* 8034594C 003428AC  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80345950 003428B0  7C 08 02 A6 */	mflr r0
/* 80345954 003428B4  90 01 01 84 */	stw r0, 0x184(r1)
/* 80345958 003428B8  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 8034595C 003428BC  F3 E1 01 78 */	psq_st f31, 376(r1), 0, qr0
/* 80345960 003428C0  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 80345964 003428C4  F3 C1 01 68 */	psq_st f30, 360(r1), 0, qr0
/* 80345968 003428C8  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 8034596C 003428CC  F3 A1 01 58 */	psq_st f29, 344(r1), 0, qr0
/* 80345970 003428D0  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 80345974 003428D4  93 C1 01 48 */	stw r30, 0x148(r1)
/* 80345978 003428D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8034597C 003428DC  40 82 00 14 */	bne lbl_80345990
/* 80345980 003428E0  80 6D A9 84 */	lwz r3, sLastModelCached__13CCubeMaterial@sda21(r13)
/* 80345984 003428E4  80 0D A9 88 */	lwz r0, sRenderingModel__13CCubeMaterial@sda21(r13)
/* 80345988 003428E8  7C 03 00 40 */	cmplw r3, r0
/* 8034598C 003428EC  41 82 04 A0 */	beq lbl_80345E2C
lbl_80345990:
/* 80345990 003428F0  80 0D A9 88 */	lwz r0, sRenderingModel__13CCubeMaterial@sda21(r13)
/* 80345994 003428F4  28 00 00 00 */	cmplwi r0, 0
/* 80345998 003428F8  40 82 00 08 */	bne lbl_803459A0
/* 8034599C 003428FC  48 00 04 90 */	b lbl_80345E2C
lbl_803459A0:
/* 803459A0 00342900  3C A0 80 4C */	lis r5, sPlayerPosition@ha
/* 803459A4 00342904  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 803459A8 00342908  38 83 62 04 */	addi r4, r3, mModelMatrix__9CGraphics@l
/* 803459AC 0034290C  3B E5 FF 50 */	addi r31, r5, sPlayerPosition@l
/* 803459B0 00342910  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 803459B4 00342914  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803459B8 00342918  38 61 00 3C */	addi r3, r1, 0x3c
/* 803459BC 0034291C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 803459C0 00342920  38 A1 00 0C */	addi r5, r1, 0xc
/* 803459C4 00342924  EC 81 00 28 */	fsubs f4, f1, f0
/* 803459C8 00342928  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 803459CC 0034292C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 803459D0 00342930  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 803459D4 00342934  EC 43 10 28 */	fsubs f2, f3, f2
/* 803459D8 00342938  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 803459DC 0034293C  EC 01 00 28 */	fsubs f0, f1, f0
/* 803459E0 00342940  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 803459E4 00342944  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 803459E8 00342948  4B FC D0 3D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 803459EC 0034294C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 803459F0 00342950  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 803459F4 00342954  C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 803459F8 00342958  28 1E 00 00 */	cmplwi r30, 0
/* 803459FC 0034295C  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 80345A00 00342960  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 80345A04 00342964  80 8D A9 88 */	lwz r4, sRenderingModel__13CCubeMaterial@sda21(r13)
/* 80345A08 00342968  C0 23 00 04 */	lfs f1, 4(r3)
/* 80345A0C 0034296C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80345A10 00342970  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 80345A14 00342974  C3 E2 CB DC */	lfs f31, lbl_805AE8FC@sda21(r2)
/* 80345A18 00342978  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 80345A1C 0034297C  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 80345A20 00342980  90 8D A9 84 */	stw r4, sLastModelCached__13CCubeMaterial@sda21(r13)
/* 80345A24 00342984  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80345A28 00342988  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80345A2C 0034298C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80345A30 00342990  41 82 00 7C */	beq lbl_80345AAC
/* 80345A34 00342994  38 00 00 02 */	li r0, 2
/* 80345A38 00342998  80 7E 00 00 */	lwz r3, 0(r30)
/* 80345A3C 0034299C  90 0D A9 80 */	stw r0, sMaterialCachedState@sda21(r13)
/* 80345A40 003429A0  C0 C3 00 24 */	lfs f6, 0x24(r3)
/* 80345A44 003429A4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80345A48 003429A8  EC 06 01 32 */	fmuls f0, f6, f4
/* 80345A4C 003429AC  C0 E3 00 20 */	lfs f7, 0x20(r3)
/* 80345A50 003429B0  EC 21 01 B2 */	fmuls f1, f1, f6
/* 80345A54 003429B4  C0 43 00 00 */	lfs f2, 0(r3)
/* 80345A58 003429B8  C1 03 00 28 */	lfs f8, 0x28(r3)
/* 80345A5C 003429BC  EC 07 01 7A */	fmadds f0, f7, f5, f0
/* 80345A60 003429C0  EC 22 09 FA */	fmadds f1, f2, f7, f1
/* 80345A64 003429C4  C0 43 00 08 */	lfs f2, 8(r3)
/* 80345A68 003429C8  D0 E1 00 60 */	stfs f7, 0x60(r1)
/* 80345A6C 003429CC  EC 08 00 FA */	fmadds f0, f8, f3, f0
/* 80345A70 003429D0  EC 22 0A 3A */	fmadds f1, f2, f8, f1
/* 80345A74 003429D4  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 80345A78 003429D8  D1 01 00 68 */	stfs f8, 0x68(r1)
/* 80345A7C 003429DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80345A80 003429E0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80345A84 003429E4  EC 40 01 F2 */	fmuls f2, f0, f7
/* 80345A88 003429E8  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80345A8C 003429EC  EC 00 02 32 */	fmuls f0, f0, f8
/* 80345A90 003429F0  EC 45 10 28 */	fsubs f2, f5, f2
/* 80345A94 003429F4  EC 24 08 28 */	fsubs f1, f4, f1
/* 80345A98 003429F8  EC 03 00 28 */	fsubs f0, f3, f0
/* 80345A9C 003429FC  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80345AA0 00342A00  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80345AA4 00342A04  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80345AA8 00342A08  48 00 00 60 */	b lbl_80345B08
lbl_80345AAC:
/* 80345AAC 00342A0C  38 00 00 01 */	li r0, 1
/* 80345AB0 00342A10  3B C4 00 20 */	addi r30, r4, 0x20
/* 80345AB4 00342A14  90 0D A9 80 */	stw r0, sMaterialCachedState@sda21(r13)
/* 80345AB8 00342A18  7F C4 F3 78 */	mr r4, r30
/* 80345ABC 00342A1C  38 61 00 30 */	addi r3, r1, 0x30
/* 80345AC0 00342A20  4B FF 1B 4D */	bl GetCenterPoint__6CAABoxCFv
/* 80345AC4 00342A24  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80345AC8 00342A28  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80345ACC 00342A2C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80345AD0 00342A30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80345AD4 00342A34  EC 43 10 28 */	fsubs f2, f3, f2
/* 80345AD8 00342A38  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 80345ADC 00342A3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80345AE0 00342A40  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 80345AE4 00342A44  C0 22 CB FC */	lfs f1, lbl_805AE91C@sda21(r2)
/* 80345AE8 00342A48  C0 81 00 34 */	lfs f4, 0x34(r1)
/* 80345AEC 00342A4C  EC 02 00 2A */	fadds f0, f2, f0
/* 80345AF0 00342A50  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 80345AF4 00342A54  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80345AF8 00342A58  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 80345AFC 00342A5C  EF E1 00 32 */	fmuls f31, f1, f0
/* 80345B00 00342A60  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 80345B04 00342A64  D0 41 00 78 */	stfs f2, 0x78(r1)
lbl_80345B08:
/* 80345B08 00342A68  80 AD A5 F0 */	lwz r5, sRenderer__13CCubeRenderer@sda21(r13)
/* 80345B0C 00342A6C  88 85 03 18 */	lbz r4, 0x318(r5)
/* 80345B10 00342A70  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 80345B14 00342A74  41 82 00 A4 */	beq lbl_80345BB8
/* 80345B18 00342A78  3C 80 80 5A */	lis r4, sViewingFrom__13CCubeMaterial@ha
/* 80345B1C 00342A7C  3C 60 80 4C */	lis r3, sPlayerPosition@ha
/* 80345B20 00342A80  38 84 67 B4 */	addi r4, r4, sViewingFrom__13CCubeMaterial@l
/* 80345B24 00342A84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80345B28 00342A88  C0 04 00 04 */	lfs f0, 4(r4)
/* 80345B2C 00342A8C  C1 41 00 74 */	lfs f10, 0x74(r1)
/* 80345B30 00342A90  EC 80 08 28 */	fsubs f4, f0, f1
/* 80345B34 00342A94  C0 04 00 00 */	lfs f0, 0(r4)
/* 80345B38 00342A98  C0 43 FF 50 */	lfs f2, sPlayerPosition@l(r3)
/* 80345B3C 00342A9C  EC CA 08 28 */	fsubs f6, f10, f1
/* 80345B40 00342AA0  C1 21 00 70 */	lfs f9, 0x70(r1)
/* 80345B44 00342AA4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80345B48 00342AA8  EC E9 10 28 */	fsubs f7, f9, f2
/* 80345B4C 00342AAC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80345B50 00342AB0  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80345B54 00342AB4  EC 44 01 32 */	fmuls f2, f4, f4
/* 80345B58 00342AB8  C1 61 00 78 */	lfs f11, 0x78(r1)
/* 80345B5C 00342ABC  ED 00 18 28 */	fsubs f8, f0, f3
/* 80345B60 00342AC0  EC AB 18 28 */	fsubs f5, f11, f3
/* 80345B64 00342AC4  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80345B68 00342AC8  EC 61 00 72 */	fmuls f3, f1, f1
/* 80345B6C 00342ACC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80345B70 00342AD0  EC 27 01 F2 */	fmuls f1, f7, f7
/* 80345B74 00342AD4  EC 06 01 B2 */	fmuls f0, f6, f6
/* 80345B78 00342AD8  EC 63 10 2A */	fadds f3, f3, f2
/* 80345B7C 00342ADC  D1 01 00 20 */	stfs f8, 0x20(r1)
/* 80345B80 00342AE0  EC 88 02 32 */	fmuls f4, f8, f8
/* 80345B84 00342AE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80345B88 00342AE8  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 80345B8C 00342AEC  EC 45 01 72 */	fmuls f2, f5, f5
/* 80345B90 00342AF0  EC 24 18 2A */	fadds f1, f4, f3
/* 80345B94 00342AF4  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80345B98 00342AF8  EC 02 00 2A */	fadds f0, f2, f0
/* 80345B9C 00342AFC  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80345BA0 00342B00  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80345BA4 00342B04  40 80 00 3C */	bge lbl_80345BE0
/* 80345BA8 00342B08  D1 24 00 00 */	stfs f9, 0(r4)
/* 80345BAC 00342B0C  D1 44 00 04 */	stfs f10, 4(r4)
/* 80345BB0 00342B10  D1 64 00 08 */	stfs f11, 8(r4)
/* 80345BB4 00342B14  48 00 00 2C */	b lbl_80345BE0
lbl_80345BB8:
/* 80345BB8 00342B18  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80345BBC 00342B1C  3C 60 80 5A */	lis r3, sViewingFrom__13CCubeMaterial@ha
/* 80345BC0 00342B20  38 00 00 01 */	li r0, 1
/* 80345BC4 00342B24  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80345BC8 00342B28  D4 43 67 B4 */	stfsu f2, sViewingFrom__13CCubeMaterial@l(r3)
/* 80345BCC 00342B2C  50 04 3E 30 */	rlwimi r4, r0, 7, 0x18, 0x18
/* 80345BD0 00342B30  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80345BD4 00342B34  D0 23 00 04 */	stfs f1, 4(r3)
/* 80345BD8 00342B38  D0 03 00 08 */	stfs f0, 8(r3)
/* 80345BDC 00342B3C  98 85 03 18 */	stb r4, 0x318(r5)
lbl_80345BE0:
/* 80345BE0 00342B40  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80345BE4 00342B44  38 61 00 54 */	addi r3, r1, 0x54
/* 80345BE8 00342B48  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80345BEC 00342B4C  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 80345BF0 00342B50  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80345BF4 00342B54  EC 81 00 28 */	fsubs f4, f1, f0
/* 80345BF8 00342B58  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80345BFC 00342B5C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80345C00 00342B60  EC 43 10 28 */	fsubs f2, f3, f2
/* 80345C04 00342B64  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 80345C08 00342B68  EC 01 00 28 */	fsubs f0, f1, f0
/* 80345C0C 00342B6C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80345C10 00342B70  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80345C14 00342B74  4B FC EC A5 */	bl Magnitude__9CVector3fCFv
/* 80345C18 00342B78  C0 02 CB FC */	lfs f0, lbl_805AE91C@sda21(r2)
/* 80345C1C 00342B7C  38 81 00 08 */	addi r4, r1, 8
/* 80345C20 00342B80  38 62 CB F8 */	addi r3, r2, lbl_805AE918@sda21
/* 80345C24 00342B84  EC 00 0F FC */	fnmsubs f0, f0, f31, f1
/* 80345C28 00342B88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80345C2C 00342B8C  4B D0 9B 05 */	bl "Max<f>__5CMathFRCfRCf"
/* 80345C30 00342B90  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80345C34 00342B94  C0 22 CC 00 */	lfs f1, lbl_805AE920@sda21(r2)
/* 80345C38 00342B98  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80345C3C 00342B9C  4C 41 13 82 */	cror 2, 1, 2
/* 80345C40 00342BA0  40 82 00 10 */	bne lbl_80345C50
/* 80345C44 00342BA4  C0 02 CB DC */	lfs f0, lbl_805AE8FC@sda21(r2)
/* 80345C48 00342BA8  D0 0D A9 90 */	stfs f0, sReflectionAlpha@sda21(r13)
/* 80345C4C 00342BAC  48 00 01 E0 */	b lbl_80345E2C
lbl_80345C50:
/* 80345C50 00342BB0  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80345C54 00342BB4  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 80345C58 00342BB8  38 83 61 D4 */	addi r4, r3, mViewMatrix__9CGraphics@l
/* 80345C5C 00342BBC  38 61 00 88 */	addi r3, r1, 0x88
/* 80345C60 00342BC0  EC 00 08 24 */	fdivs f0, f0, f1
/* 80345C64 00342BC4  D0 0D A9 90 */	stfs f0, sReflectionAlpha@sda21(r13)
/* 80345C68 00342BC8  4B FC D0 35 */	bl GetQuickInverse__12CTransform4fCFv
/* 80345C6C 00342BCC  3C 80 80 5A */	lis r4, mModelMatrix__9CGraphics@ha
/* 80345C70 00342BD0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80345C74 00342BD4  38 A4 62 04 */	addi r5, r4, mModelMatrix__9CGraphics@l
/* 80345C78 00342BD8  38 81 00 88 */	addi r4, r1, 0x88
/* 80345C7C 00342BDC  4B FC CC D5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80345C80 00342BE0  38 61 01 18 */	addi r3, r1, 0x118
/* 80345C84 00342BE4  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80345C88 00342BE8  4B FC CE ED */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80345C8C 00342BEC  38 61 01 18 */	addi r3, r1, 0x118
/* 80345C90 00342BF0  38 80 00 30 */	li r4, 0x30
/* 80345C94 00342BF4  38 A0 00 00 */	li r5, 0
/* 80345C98 00342BF8  48 03 67 F9 */	bl GXLoadTexMtxImm
/* 80345C9C 00342BFC  3C 60 80 3E */	lis r3, lbl_803D8078@ha
/* 80345CA0 00342C00  38 80 00 52 */	li r4, 0x52
/* 80345CA4 00342C04  38 63 80 78 */	addi r3, r3, lbl_803D8078@l
/* 80345CA8 00342C08  38 A0 00 00 */	li r5, 0
/* 80345CAC 00342C0C  48 03 67 E5 */	bl GXLoadTexMtxImm
/* 80345CB0 00342C10  C0 82 CB E8 */	lfs f4, lbl_805AE908@sda21(r2)
/* 80345CB4 00342C14  38 61 00 48 */	addi r3, r1, 0x48
/* 80345CB8 00342C18  C3 C2 CC 04 */	lfs f30, lbl_805AE924@sda21(r2)
/* 80345CBC 00342C1C  EC A4 F8 24 */	fdivs f5, f4, f31
/* 80345CC0 00342C20  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80345CC4 00342C24  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80345CC8 00342C28  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80345CCC 00342C2C  C0 62 CB DC */	lfs f3, lbl_805AE8FC@sda21(r2)
/* 80345CD0 00342C30  EC E5 00 B2 */	fmuls f7, f5, f2
/* 80345CD4 00342C34  EC C5 00 72 */	fmuls f6, f5, f1
/* 80345CD8 00342C38  EC A5 00 32 */	fmuls f5, f5, f0
/* 80345CDC 00342C3C  EC 24 01 F2 */	fmuls f1, f4, f7
/* 80345CE0 00342C40  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80345CE4 00342C44  EC 43 01 72 */	fmuls f2, f3, f5
/* 80345CE8 00342C48  EC 25 08 F8 */	fmsubs f1, f5, f3, f1
/* 80345CEC 00342C4C  EC 07 00 F8 */	fmsubs f0, f7, f3, f0
/* 80345CF0 00342C50  EC 46 11 38 */	fmsubs f2, f6, f4, f2
/* 80345CF4 00342C54  FF A0 F0 90 */	fmr f29, f30
/* 80345CF8 00342C58  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80345CFC 00342C5C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80345D00 00342C60  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80345D04 00342C64  4B FC E9 F5 */	bl CanBeNormalized__9CVector3fCFv
/* 80345D08 00342C68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80345D0C 00342C6C  41 82 00 10 */	beq lbl_80345D1C
/* 80345D10 00342C70  38 61 00 48 */	addi r3, r1, 0x48
/* 80345D14 00342C74  4B FC EB E5 */	bl Normalize__9CVector3fFv
/* 80345D18 00342C78  48 00 00 20 */	b lbl_80345D38
lbl_80345D1C:
/* 80345D1C 00342C7C  3C 60 80 5A */	lis r3, sRightVector__9CVector3f@ha
/* 80345D20 00342C80  C4 43 67 18 */	lfsu f2, sRightVector__9CVector3f@l(r3)
/* 80345D24 00342C84  C0 23 00 04 */	lfs f1, 4(r3)
/* 80345D28 00342C88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80345D2C 00342C8C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80345D30 00342C90  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80345D34 00342C94  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80345D38:
/* 80345D38 00342C98  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80345D3C 00342C9C  3C 60 80 3E */	lis r3, lbl_803D80A8@ha
/* 80345D40 00342CA0  C0 E1 00 4C */	lfs f7, 0x4c(r1)
/* 80345D44 00342CA4  39 83 80 A8 */	addi r12, r3, lbl_803D80A8@l
/* 80345D48 00342CA8  C0 81 00 84 */	lfs f4, 0x84(r1)
/* 80345D4C 00342CAC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80345D50 00342CB0  EC 60 01 F2 */	fmuls f3, f0, f7
/* 80345D54 00342CB4  C0 42 CC 08 */	lfs f2, lbl_805AE928@sda21(r2)
/* 80345D58 00342CB8  C0 22 CB E8 */	lfs f1, lbl_805AE908@sda21(r2)
/* 80345D5C 00342CBC  FC 00 20 50 */	fneg f0, f4
/* 80345D60 00342CC0  C0 81 00 70 */	lfs f4, 0x70(r1)
/* 80345D64 00342CC4  38 80 00 33 */	li r4, 0x33
/* 80345D68 00342CC8  C0 C1 00 48 */	lfs f6, 0x48(r1)
/* 80345D6C 00342CCC  EC A2 0F FA */	fmadds f5, f2, f31, f1
/* 80345D70 00342CD0  C0 4D 9D 6C */	lfs f2, lbl_805A892C@sda21(r13)
/* 80345D74 00342CD4  38 A0 00 00 */	li r5, 0
/* 80345D78 00342CD8  C0 2D 9D 70 */	lfs f1, lbl_805A8930@sda21(r13)
/* 80345D7C 00342CDC  EC 64 19 BA */	fmadds f3, f4, f6, f3
/* 80345D80 00342CE0  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80345D84 00342CE4  EC 25 00 72 */	fmuls f1, f5, f1
/* 80345D88 00342CE8  C0 A1 00 78 */	lfs f5, 0x78(r1)
/* 80345D8C 00342CEC  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 80345D90 00342CF0  EF DE 00 B2 */	fmuls f30, f30, f2
/* 80345D94 00342CF4  81 2C 00 00 */	lwz r9, 0(r12)
/* 80345D98 00342CF8  EC 45 19 3A */	fmadds f2, f5, f4, f3
/* 80345D9C 00342CFC  EF BD 00 72 */	fmuls f29, f29, f1
/* 80345DA0 00342D00  81 0C 00 04 */	lwz r8, 4(r12)
/* 80345DA4 00342D04  80 EC 00 0C */	lwz r7, 0xc(r12)
/* 80345DA8 00342D08  80 CC 00 18 */	lwz r6, 0x18(r12)
/* 80345DAC 00342D0C  FC 40 10 50 */	fneg f2, f2
/* 80345DB0 00342D10  C0 22 CB FC */	lfs f1, lbl_805AE91C@sda21(r2)
/* 80345DB4 00342D14  80 0C 00 1C */	lwz r0, 0x1c(r12)
/* 80345DB8 00342D18  EC 9E 01 B2 */	fmuls f4, f30, f6
/* 80345DBC 00342D1C  91 21 00 E8 */	stw r9, 0xe8(r1)
/* 80345DC0 00342D20  EC 7E 01 F2 */	fmuls f3, f30, f7
/* 80345DC4 00342D24  81 6C 00 08 */	lwz r11, 8(r12)
/* 80345DC8 00342D28  EC 22 0F BA */	fmadds f1, f2, f30, f1
/* 80345DCC 00342D2C  91 01 00 EC */	stw r8, 0xec(r1)
/* 80345DD0 00342D30  81 4C 00 10 */	lwz r10, 0x10(r12)
/* 80345DD4 00342D34  EC 00 07 72 */	fmuls f0, f0, f29
/* 80345DD8 00342D38  90 E1 00 F4 */	stw r7, 0xf4(r1)
/* 80345DDC 00342D3C  81 2C 00 14 */	lwz r9, 0x14(r12)
/* 80345DE0 00342D40  90 C1 01 00 */	stw r6, 0x100(r1)
/* 80345DE4 00342D44  81 0C 00 20 */	lwz r8, 0x20(r12)
/* 80345DE8 00342D48  90 01 01 04 */	stw r0, 0x104(r1)
/* 80345DEC 00342D4C  80 EC 00 24 */	lwz r7, 0x24(r12)
/* 80345DF0 00342D50  80 CC 00 28 */	lwz r6, 0x28(r12)
/* 80345DF4 00342D54  80 0C 00 2C */	lwz r0, 0x2c(r12)
/* 80345DF8 00342D58  91 61 00 F0 */	stw r11, 0xf0(r1)
/* 80345DFC 00342D5C  91 41 00 F8 */	stw r10, 0xf8(r1)
/* 80345E00 00342D60  91 21 00 FC */	stw r9, 0xfc(r1)
/* 80345E04 00342D64  91 01 01 08 */	stw r8, 0x108(r1)
/* 80345E08 00342D68  90 E1 01 0C */	stw r7, 0x10c(r1)
/* 80345E0C 00342D6C  90 C1 01 10 */	stw r6, 0x110(r1)
/* 80345E10 00342D70  90 01 01 14 */	stw r0, 0x114(r1)
/* 80345E14 00342D74  D0 81 00 E8 */	stfs f4, 0xe8(r1)
/* 80345E18 00342D78  D0 61 00 EC */	stfs f3, 0xec(r1)
/* 80345E1C 00342D7C  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 80345E20 00342D80  D3 A1 01 00 */	stfs f29, 0x100(r1)
/* 80345E24 00342D84  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80345E28 00342D88  48 03 66 69 */	bl GXLoadTexMtxImm
lbl_80345E2C:
/* 80345E2C 00342D8C  E3 E1 01 78 */	psq_l f31, 376(r1), 0, qr0
/* 80345E30 00342D90  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 80345E34 00342D94  E3 C1 01 68 */	psq_l f30, 360(r1), 0, qr0
/* 80345E38 00342D98  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 80345E3C 00342D9C  E3 A1 01 58 */	psq_l f29, 344(r1), 0, qr0
/* 80345E40 00342DA0  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 80345E44 00342DA4  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 80345E48 00342DA8  80 01 01 84 */	lwz r0, 0x184(r1)
/* 80345E4C 00342DAC  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 80345E50 00342DB0  7C 08 03 A6 */	mtlr r0
/* 80345E54 00342DB4  38 21 01 80 */	addi r1, r1, 0x180
/* 80345E58 00342DB8  4E 80 00 20 */	blr

.global SetCurrent__13CCubeMaterialCFRC11CModelFlagsRC12CCubeSurfaceRC10CCubeModel
SetCurrent__13CCubeMaterialCFRC11CModelFlagsRC12CCubeSurfaceRC10CCubeModel:
/* 80345E5C 00342DBC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80345E60 00342DC0  7C 08 02 A6 */	mflr r0
/* 80345E64 00342DC4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80345E68 00342DC8  BE 21 00 44 */	stmw r17, 0x44(r1)
/* 80345E6C 00342DCC  7C 72 1B 78 */	mr r18, r3
/* 80345E70 00342DD0  7C 9E 23 78 */	mr r30, r4
/* 80345E74 00342DD4  7C D5 33 78 */	mr r21, r6
/* 80345E78 00342DD8  80 0D A9 8C */	lwz r0, sLastMaterialCached@sda21(r13)
/* 80345E7C 00342DDC  80 E3 00 00 */	lwz r7, 0(r3)
/* 80345E80 00342DE0  7C 07 00 40 */	cmplw r7, r0
/* 80345E84 00342DE4  40 82 00 38 */	bne lbl_80345EBC
/* 80345E88 00342DE8  80 0D A9 80 */	lwz r0, sMaterialCachedState@sda21(r13)
/* 80345E8C 00342DEC  2C 00 00 02 */	cmpwi r0, 2
/* 80345E90 00342DF0  41 82 00 2C */	beq lbl_80345EBC
/* 80345E94 00342DF4  40 80 07 28 */	bge lbl_803465BC
/* 80345E98 00342DF8  2C 00 00 01 */	cmpwi r0, 1
/* 80345E9C 00342DFC  40 80 00 08 */	bge lbl_80345EA4
/* 80345EA0 00342E00  48 00 07 1C */	b lbl_803465BC
lbl_80345EA4:
/* 80345EA4 00342E04  80 6D A9 84 */	lwz r3, sLastModelCached__13CCubeMaterial@sda21(r13)
/* 80345EA8 00342E08  80 0D A9 88 */	lwz r0, sRenderingModel__13CCubeMaterial@sda21(r13)
/* 80345EAC 00342E0C  7C 03 00 40 */	cmplw r3, r0
/* 80345EB0 00342E10  40 82 00 0C */	bne lbl_80345EBC
/* 80345EB4 00342E14  48 00 07 08 */	b lbl_803465BC
/* 80345EB8 00342E18  48 00 07 04 */	b lbl_803465BC
lbl_80345EBC:
/* 80345EBC 00342E1C  88 0D A9 98 */	lbz r0, sbRenderModelBlack@sda21(r13)
/* 80345EC0 00342E20  28 00 00 00 */	cmplwi r0, 0
/* 80345EC4 00342E24  41 82 00 10 */	beq lbl_80345ED4
/* 80345EC8 00342E28  7E 43 93 78 */	mr r3, r18
/* 80345ECC 00342E2C  48 00 0B C5 */	bl SetCurrentBlack__13CCubeMaterialCFv
/* 80345ED0 00342E30  48 00 06 EC */	b lbl_803465BC
lbl_80345ED4:
/* 80345ED4 00342E34  82 67 00 00 */	lwz r19, 0(r7)
/* 80345ED8 00342E38  3B A0 00 00 */	li r29, 0
/* 80345EDC 00342E3C  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 80345EE0 00342E40  3A 20 00 00 */	li r17, 0
/* 80345EE4 00342E44  72 63 01 40 */	andi. r3, r19, 0x140
/* 80345EE8 00342E48  83 E7 00 04 */	lwz r31, 4(r7)
/* 80345EEC 00342E4C  7C 03 00 D0 */	neg r0, r3
/* 80345EF0 00342E50  7C 00 1B 78 */	or r0, r0, r3
/* 80345EF4 00342E54  54 19 0F FF */	rlwinm. r25, r0, 1, 0x1f, 0x1f
/* 80345EF8 00342E58  41 82 00 24 */	beq lbl_80345F1C
/* 80345EFC 00342E5C  56 60 05 EF */	rlwinm. r0, r19, 0, 0x17, 0x17
/* 80345F00 00342E60  90 ED A9 8C */	stw r7, sLastMaterialCached@sda21(r13)
/* 80345F04 00342E64  92 AD A9 88 */	stw r21, sRenderingModel__13CCubeMaterial@sda21(r13)
/* 80345F08 00342E68  41 82 00 0C */	beq lbl_80345F14
/* 80345F0C 00342E6C  7C A3 2B 78 */	mr r3, r5
/* 80345F10 00342E70  48 00 00 08 */	b lbl_80345F18
lbl_80345F14:
/* 80345F14 00342E74  38 60 00 00 */	li r3, 0
lbl_80345F18:
/* 80345F18 00342E78  4B FF FA 35 */	bl EnsureViewDepStateCached__13CCubeMaterialFPC12CCubeSurface
lbl_80345F1C:
/* 80345F1C 00342E7C  A0 1E 00 02 */	lhz r0, 2(r30)
/* 80345F20 00342E80  80 72 00 00 */	lwz r3, 0(r18)
/* 80345F24 00342E84  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80345F28 00342E88  92 AD A9 88 */	stw r21, sRenderingModel__13CCubeMaterial@sda21(r13)
/* 80345F2C 00342E8C  90 6D A9 8C */	stw r3, sLastMaterialCached@sda21(r13)
/* 80345F30 00342E90  40 82 00 5C */	bne lbl_80345F8C
/* 80345F34 00342E94  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80345F38 00342E98  3A 80 00 00 */	li r20, 0
/* 80345F3C 00342E9C  82 55 00 1C */	lwz r18, 0x1c(r21)
/* 80345F40 00342EA0  38 03 00 08 */	addi r0, r3, 8
/* 80345F44 00342EA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80345F48 00342EA8  48 00 00 38 */	b lbl_80345F80
lbl_80345F4C:
/* 80345F4C 00342EAC  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80345F50 00342EB0  7E 84 A3 78 */	mr r4, r20
/* 80345F54 00342EB4  80 D2 00 0C */	lwz r6, 0xc(r18)
/* 80345F58 00342EB8  38 A0 00 01 */	li r5, 1
/* 80345F5C 00342EBC  80 03 00 00 */	lwz r0, 0(r3)
/* 80345F60 00342EC0  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80345F64 00342EC4  38 03 00 08 */	addi r0, r3, 8
/* 80345F68 00342EC8  7C 66 00 2E */	lwzx r3, r6, r0
/* 80345F6C 00342ECC  4B FC 97 D1 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 80345F70 00342ED0  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80345F74 00342ED4  3A 94 00 01 */	addi r20, r20, 1
/* 80345F78 00342ED8  38 03 00 04 */	addi r0, r3, 4
/* 80345F7C 00342EDC  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80345F80:
/* 80345F80 00342EE0  7C 14 F8 40 */	cmplw r20, r31
/* 80345F84 00342EE4  41 80 FF C8 */	blt lbl_80345F4C
/* 80345F88 00342EE8  48 00 00 18 */	b lbl_80345FA0
lbl_80345F8C:
/* 80345F8C 00342EEC  38 1F 00 02 */	addi r0, r31, 2
/* 80345F90 00342EF0  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80345F94 00342EF4  54 00 10 3A */	slwi r0, r0, 2
/* 80345F98 00342EF8  7C 03 02 14 */	add r0, r3, r0
/* 80345F9C 00342EFC  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80345FA0:
/* 80345FA0 00342F00  80 0D 9D 68 */	lwz r0, lbl_805A8928@sda21(r13)
/* 80345FA4 00342F04  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80345FA8 00342F08  2C 00 FF FF */	cmpwi r0, -1
/* 80345FAC 00342F0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80345FB0 00342F10  41 82 00 18 */	beq lbl_80345FC8
/* 80345FB4 00342F14  7C 00 18 00 */	cmpw r0, r3
/* 80345FB8 00342F18  40 82 00 10 */	bne lbl_80345FC8
/* 80345FBC 00342F1C  80 0D A9 80 */	lwz r0, sMaterialCachedState@sda21(r13)
/* 80345FC0 00342F20  2C 00 00 00 */	cmpwi r0, 0
/* 80345FC4 00342F24  41 82 05 F8 */	beq lbl_803465BC
lbl_80345FC8:
/* 80345FC8 00342F28  90 6D 9D 68 */	stw r3, lbl_805A8928@sda21(r13)
/* 80345FCC 00342F2C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80345FD0 00342F30  80 63 00 00 */	lwz r3, 0(r3)
/* 80345FD4 00342F34  4B FC 1F 29 */	bl SetVtxDescv_Compressed__3CGXFUi
/* 80345FD8 00342F38  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80345FDC 00342F3C  56 64 9F FE */	rlwinm r4, r19, 0x13, 0x1f, 0x1f
/* 80345FE0 00342F40  88 0D A7 82 */	lbz r0, lbl_805A9342@sda21(r13)
/* 80345FE4 00342F44  38 63 00 08 */	addi r3, r3, 8
/* 80345FE8 00342F48  7C 04 00 40 */	cmplw r4, r0
/* 80345FEC 00342F4C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80345FF0 00342F50  41 82 00 0C */	beq lbl_80345FFC
/* 80345FF4 00342F54  7E A3 AB 78 */	mr r3, r21
/* 80345FF8 00342F58  4B FC 15 61 */	bl SetUsingPackedLightmaps__10CCubeModelCFb
lbl_80345FFC:
/* 80345FFC 00342F5C  3A A0 00 00 */	li r21, 0
/* 80346000 00342F60  56 60 07 39 */	rlwinm. r0, r19, 0, 0x1c, 0x1c
/* 80346004 00342F64  92 A1 00 38 */	stw r21, 0x38(r1)
/* 80346008 00342F68  41 82 00 7C */	beq lbl_80346084
/* 8034600C 00342F6C  82 C1 00 3C */	lwz r22, 0x3c(r1)
/* 80346010 00342F70  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346014 00342F74  3A 40 00 00 */	li r18, 0
/* 80346018 00342F78  80 16 00 00 */	lwz r0, 0(r22)
/* 8034601C 00342F7C  3A 83 53 EC */	addi r20, r3, sGXState__3CGX@l
/* 80346020 00342F80  90 01 00 38 */	stw r0, 0x38(r1)
/* 80346024 00342F84  48 00 00 40 */	b lbl_80346064
lbl_80346028:
/* 80346028 00342F88  80 B6 00 04 */	lwz r5, 4(r22)
/* 8034602C 00342F8C  7C 74 AA 14 */	add r3, r20, r21
/* 80346030 00342F90  84 03 00 58 */	lwzu r0, 0x58(r3)
/* 80346034 00342F94  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80346038 00342F98  7C 00 28 40 */	cmplw r0, r5
/* 8034603C 00342F9C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80346040 00342FA0  41 82 00 18 */	beq lbl_80346058
/* 80346044 00342FA4  90 A3 00 00 */	stw r5, 0(r3)
/* 80346048 00342FA8  7E 43 93 78 */	mr r3, r18
/* 8034604C 00342FAC  38 81 00 18 */	addi r4, r1, 0x18
/* 80346050 00342FB0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80346054 00342FB4  48 03 56 91 */	bl GXSetTevKColor
lbl_80346058:
/* 80346058 00342FB8  3A D6 00 04 */	addi r22, r22, 4
/* 8034605C 00342FBC  3A 52 00 01 */	addi r18, r18, 1
/* 80346060 00342FC0  3A B5 00 04 */	addi r21, r21, 4
lbl_80346064:
/* 80346064 00342FC4  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80346068 00342FC8  7C 12 18 40 */	cmplw r18, r3
/* 8034606C 00342FCC  41 80 FF BC */	blt lbl_80346028
/* 80346070 00342FD0  38 03 00 01 */	addi r0, r3, 1
/* 80346074 00342FD4  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80346078 00342FD8  54 00 10 3A */	slwi r0, r0, 2
/* 8034607C 00342FDC  7C 03 02 14 */	add r0, r3, r0
/* 80346080 00342FE0  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80346084:
/* 80346084 00342FE4  80 6D A5 F0 */	lwz r3, sRenderer__13CCubeRenderer@sda21(r13)
/* 80346088 00342FE8  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8034608C 00342FEC  88 03 03 18 */	lbz r0, 0x318(r3)
/* 80346090 00342FF0  83 64 00 00 */	lwz r27, 0(r4)
/* 80346094 00342FF4  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80346098 00342FF8  41 82 00 40 */	beq lbl_803460D8
/* 8034609C 00342FFC  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 803460A0 00343000  3A 43 53 EC */	addi r18, r3, sGXState__3CGX@l
/* 803460A4 00343004  A0 12 00 56 */	lhz r0, 0x56(r18)
/* 803460A8 00343008  28 00 00 25 */	cmplwi r0, 0x25
/* 803460AC 0034300C  41 82 00 3C */	beq lbl_803460E8
/* 803460B0 00343010  38 60 00 25 */	li r3, 0x25
/* 803460B4 00343014  4B D6 E2 C5 */	bl update_fog__3CGXFUi
/* 803460B8 00343018  38 00 00 25 */	li r0, 0x25
/* 803460BC 0034301C  38 60 00 01 */	li r3, 1
/* 803460C0 00343020  B0 12 00 56 */	sth r0, 0x56(r18)
/* 803460C4 00343024  38 80 00 01 */	li r4, 1
/* 803460C8 00343028  38 A0 00 01 */	li r5, 1
/* 803460CC 0034302C  38 C0 00 00 */	li r6, 0
/* 803460D0 00343030  48 03 5D DD */	bl GXSetBlendMode
/* 803460D4 00343034  48 00 00 14 */	b lbl_803460E8
lbl_803460D8:
/* 803460D8 00343038  7F 63 DB 78 */	mr r3, r27
/* 803460DC 0034303C  7F C4 F3 78 */	mr r4, r30
/* 803460E0 00343040  56 65 DF FE */	rlwinm r5, r19, 0x1b, 0x1f, 0x1f
/* 803460E4 00343044  48 00 20 29 */	bl SetupBlendMode__13CCubeMaterialFUiRC11CModelFlagsb
lbl_803460E8:
/* 803460E8 00343048  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 803460EC 0034304C  56 7A B7 FF */	rlwinm. r26, r19, 0x16, 0x1f, 0x1f
/* 803460F0 00343050  38 63 00 04 */	addi r3, r3, 4
/* 803460F4 00343054  90 61 00 3C */	stw r3, 0x3c(r1)
/* 803460F8 00343058  41 82 00 10 */	beq lbl_80346108
/* 803460FC 0034305C  38 03 00 04 */	addi r0, r3, 4
/* 80346100 00343060  82 23 00 00 */	lwz r17, 0(r3)
/* 80346104 00343064  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80346108:
/* 80346108 00343068  A0 7E 00 02 */	lhz r3, 2(r30)
/* 8034610C 0034306C  7E 64 9B 78 */	mr r4, r19
/* 80346110 00343070  48 00 05 AD */	bl HandleDepth__FUiUi
/* 80346114 00343074  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80346118 00343078  80 65 00 00 */	lwz r3, 0(r5)
/* 8034611C 0034307C  80 85 00 04 */	lwz r4, 4(r5)
/* 80346120 00343080  38 03 00 01 */	addi r0, r3, 1
/* 80346124 00343084  54 00 10 3A */	slwi r0, r0, 2
/* 80346128 00343088  7C 05 02 14 */	add r0, r5, r0
/* 8034612C 0034308C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80346130 00343090  48 00 06 5D */	bl HandleColorChannels__FUiUi
/* 80346134 00343094  88 0D A9 9A */	lbz r0, sbRenderModelShadow@sda21(r13)
/* 80346138 00343098  7C 78 1B 78 */	mr r24, r3
/* 8034613C 0034309C  3A 80 00 00 */	li r20, 0
/* 80346140 003430A0  28 00 00 00 */	cmplwi r0, 0
/* 80346144 003430A4  41 82 00 08 */	beq lbl_8034614C
/* 80346148 003430A8  3A 80 00 02 */	li r20, 2
lbl_8034614C:
/* 8034614C 003430AC  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80346150 003430B0  38 A0 00 00 */	li r5, 0
/* 80346154 003430B4  80 6D A5 F0 */	lwz r3, sRenderer__13CCubeRenderer@sda21(r13)
/* 80346158 003430B8  3A E0 00 00 */	li r23, 0
/* 8034615C 003430BC  82 64 00 00 */	lwz r19, 0(r4)
/* 80346160 003430C0  38 C4 00 04 */	addi r6, r4, 4
/* 80346164 003430C4  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80346168 003430C8  1C 13 00 14 */	mulli r0, r19, 0x14
/* 8034616C 003430CC  92 61 00 34 */	stw r19, 0x34(r1)
/* 80346170 003430D0  7C 86 02 14 */	add r4, r6, r0
/* 80346174 003430D4  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80346178 003430D8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8034617C 003430DC  88 03 03 18 */	lbz r0, 0x318(r3)
/* 80346180 003430E0  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80346184 003430E4  54 12 F7 FF */	rlwinm. r18, r0, 0x1e, 0x1f, 0x1f
/* 80346188 003430E8  90 81 00 28 */	stw r4, 0x28(r1)
/* 8034618C 003430EC  41 82 00 88 */	beq lbl_80346214
/* 80346190 003430F0  38 14 00 01 */	addi r0, r20, 1
/* 80346194 003430F4  90 81 00 24 */	stw r4, 0x24(r1)
/* 80346198 003430F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8034619C 003430FC  80 66 00 08 */	lwz r3, 8(r6)
/* 803461A0 00343100  54 60 BF BE */	rlwinm r0, r3, 0x17, 0x1e, 0x1f
/* 803461A4 00343104  90 61 00 30 */	stw r3, 0x30(r1)
/* 803461A8 00343108  28 00 00 01 */	cmplwi r0, 1
/* 803461AC 0034310C  40 82 00 34 */	bne lbl_803461E0
/* 803461B0 00343110  80 02 CB C0 */	lwz r0, lbl_805AE8E0@sda21(r2)
/* 803461B4 00343114  38 66 00 14 */	addi r3, r6, 0x14
/* 803461B8 00343118  38 A4 00 04 */	addi r5, r4, 4
/* 803461BC 0034311C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 803461C0 00343120  38 81 00 1C */	addi r4, r1, 0x1c
/* 803461C4 00343124  38 60 00 01 */	li r3, 1
/* 803461C8 00343128  90 A1 00 28 */	stw r5, 0x28(r1)
/* 803461CC 0034312C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803461D0 00343130  48 03 54 2D */	bl GXSetTevColor
/* 803461D4 00343134  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 803461D8 00343138  80 03 00 08 */	lwz r0, 8(r3)
/* 803461DC 0034313C  90 01 00 30 */	stw r0, 0x30(r1)
lbl_803461E0:
/* 803461E0 00343140  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 803461E4 00343144  7E 83 A3 78 */	mr r3, r20
/* 803461E8 00343148  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 803461EC 0034314C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803461F0 00343150  88 CD A9 9A */	lbz r6, sbRenderModelShadow@sda21(r13)
/* 803461F4 00343154  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803461F8 00343158  48 00 1E 29 */	bl HandleTev__FiPCUiPCUib
/* 803461FC 0034315C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80346200 00343160  56 60 10 3A */	slwi r0, r19, 2
/* 80346204 00343164  3A E0 00 00 */	li r23, 0
/* 80346208 00343168  7C 03 02 14 */	add r0, r3, r0
/* 8034620C 0034316C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80346210 00343170  48 00 00 8C */	b lbl_8034629C
lbl_80346214:
/* 80346214 00343174  7C 13 A2 14 */	add r0, r19, r20
/* 80346218 00343178  7E 93 A3 78 */	mr r19, r20
/* 8034621C 0034317C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80346220 00343180  48 00 00 70 */	b lbl_80346290
lbl_80346224:
/* 80346224 00343184  88 0D A9 9A */	lbz r0, sbRenderModelShadow@sda21(r13)
/* 80346228 00343188  7E 63 9B 78 */	mr r3, r19
/* 8034622C 0034318C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80346230 00343190  38 C0 00 00 */	li r6, 0
/* 80346234 00343194  28 00 00 00 */	cmplwi r0, 0
/* 80346238 00343198  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8034623C 0034319C  41 82 00 10 */	beq lbl_8034624C
/* 80346240 003431A0  7C 13 A0 40 */	cmplw r19, r20
/* 80346244 003431A4  40 82 00 08 */	bne lbl_8034624C
/* 80346248 003431A8  38 C0 00 01 */	li r6, 1
lbl_8034624C:
/* 8034624C 003431AC  48 00 1D D5 */	bl HandleTev__FiPCUiPCUib
/* 80346250 003431B0  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80346254 003431B4  80 03 00 08 */	lwz r0, 8(r3)
/* 80346258 003431B8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8034625C 003431BC  54 00 BF BE */	rlwinm r0, r0, 0x17, 0x1e, 0x1f
/* 80346260 003431C0  28 00 00 03 */	cmplwi r0, 3
/* 80346264 003431C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80346268 003431C8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8034626C 003431CC  40 82 00 08 */	bne lbl_80346274
/* 80346270 003431D0  3A E0 00 01 */	li r23, 1
lbl_80346274:
/* 80346274 003431D4  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80346278 003431D8  3A 73 00 01 */	addi r19, r19, 1
/* 8034627C 003431DC  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80346280 003431E0  38 84 00 14 */	addi r4, r4, 0x14
/* 80346284 003431E4  38 03 00 04 */	addi r0, r3, 4
/* 80346288 003431E8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8034628C 003431EC  90 01 00 28 */	stw r0, 0x28(r1)
lbl_80346290:
/* 80346290 003431F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80346294 003431F4  7C 13 00 40 */	cmplw r19, r0
/* 80346298 003431F8  41 80 FF 8C */	blt lbl_80346224
lbl_8034629C:
/* 8034629C 003431FC  82 61 00 28 */	lwz r19, 0x28(r1)
/* 803462A0 00343200  28 12 00 00 */	cmplwi r18, 0
/* 803462A4 00343204  92 61 00 10 */	stw r19, 0x10(r1)
/* 803462A8 00343208  41 82 00 9C */	beq lbl_80346344
/* 803462AC 0034320C  82 B3 00 00 */	lwz r21, 0(r19)
/* 803462B0 00343210  3B 80 00 02 */	li r28, 2
/* 803462B4 00343214  28 15 00 02 */	cmplwi r21, 2
/* 803462B8 00343218  41 81 00 08 */	bgt lbl_803462C0
/* 803462BC 0034321C  7E BC AB 78 */	mr r28, r21
lbl_803462C0:
/* 803462C0 00343220  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 803462C4 00343224  82 C1 00 10 */	lwz r22, 0x10(r1)
/* 803462C8 00343228  3A 80 00 00 */	li r20, 0
/* 803462CC 0034322C  3A 60 00 00 */	li r19, 0
/* 803462D0 00343230  3A 43 53 EC */	addi r18, r3, sGXState__3CGX@l
/* 803462D4 00343234  48 00 00 50 */	b lbl_80346324
lbl_803462D8:
/* 803462D8 00343238  7C 72 9A 14 */	add r3, r18, r19
/* 803462DC 0034323C  80 16 00 04 */	lwz r0, 4(r22)
/* 803462E0 00343240  38 A3 02 28 */	addi r5, r3, 0x228
/* 803462E4 00343244  80 63 02 28 */	lwz r3, 0x228(r3)
/* 803462E8 00343248  7C 03 00 40 */	cmplw r3, r0
/* 803462EC 0034324C  41 82 00 2C */	beq lbl_80346318
/* 803462F0 00343250  54 04 BE FE */	rlwinm r4, r0, 0x17, 0x1b, 0x1f
/* 803462F4 00343254  54 03 8E BE */	rlwinm r3, r0, 0x11, 0x1a, 0x1f
/* 803462F8 00343258  90 05 00 00 */	stw r0, 0(r5)
/* 803462FC 0034325C  38 C4 00 1E */	addi r6, r4, 0x1e
/* 80346300 00343260  39 03 00 40 */	addi r8, r3, 0x40
/* 80346304 00343264  54 07 97 FE */	rlwinm r7, r0, 0x12, 0x1f, 0x1f
/* 80346308 00343268  7E 83 A3 78 */	mr r3, r20
/* 8034630C 0034326C  54 04 07 3E */	clrlwi r4, r0, 0x1c
/* 80346310 00343270  54 05 E6 FE */	rlwinm r5, r0, 0x1c, 0x1b, 0x1f
/* 80346314 00343274  48 03 1C 81 */	bl GXSetTexCoordGen2
lbl_80346318:
/* 80346318 00343278  3A D6 00 04 */	addi r22, r22, 4
/* 8034631C 0034327C  3A 94 00 01 */	addi r20, r20, 1
/* 80346320 00343280  3A 73 00 04 */	addi r19, r19, 4
lbl_80346324:
/* 80346324 00343284  7C 14 E0 40 */	cmplw r20, r28
/* 80346328 00343288  41 80 FF B0 */	blt lbl_803462D8
/* 8034632C 0034328C  38 15 00 01 */	addi r0, r21, 1
/* 80346330 00343290  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80346334 00343294  54 00 10 3A */	slwi r0, r0, 2
/* 80346338 00343298  7C 03 02 14 */	add r0, r3, r0
/* 8034633C 0034329C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80346340 003432A0  48 00 00 84 */	b lbl_803463C4
lbl_80346344:
/* 80346344 003432A4  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346348 003432A8  83 93 00 00 */	lwz r28, 0(r19)
/* 8034634C 003432AC  3A 80 00 00 */	li r20, 0
/* 80346350 003432B0  3A A0 00 00 */	li r21, 0
/* 80346354 003432B4  3A 43 53 EC */	addi r18, r3, sGXState__3CGX@l
/* 80346358 003432B8  48 00 00 50 */	b lbl_803463A8
lbl_8034635C:
/* 8034635C 003432BC  7C 72 AA 14 */	add r3, r18, r21
/* 80346360 003432C0  81 33 00 04 */	lwz r9, 4(r19)
/* 80346364 003432C4  38 A3 02 28 */	addi r5, r3, 0x228
/* 80346368 003432C8  80 03 02 28 */	lwz r0, 0x228(r3)
/* 8034636C 003432CC  7C 00 48 40 */	cmplw r0, r9
/* 80346370 003432D0  41 82 00 2C */	beq lbl_8034639C
/* 80346374 003432D4  55 24 BE FE */	rlwinm r4, r9, 0x17, 0x1b, 0x1f
/* 80346378 003432D8  55 23 8E BE */	rlwinm r3, r9, 0x11, 0x1a, 0x1f
/* 8034637C 003432DC  91 25 00 00 */	stw r9, 0(r5)
/* 80346380 003432E0  38 C4 00 1E */	addi r6, r4, 0x1e
/* 80346384 003432E4  39 03 00 40 */	addi r8, r3, 0x40
/* 80346388 003432E8  55 27 97 FE */	rlwinm r7, r9, 0x12, 0x1f, 0x1f
/* 8034638C 003432EC  7E 83 A3 78 */	mr r3, r20
/* 80346390 003432F0  55 24 07 3E */	clrlwi r4, r9, 0x1c
/* 80346394 003432F4  55 25 E6 FE */	rlwinm r5, r9, 0x1c, 0x1b, 0x1f
/* 80346398 003432F8  48 03 1B FD */	bl GXSetTexCoordGen2
lbl_8034639C:
/* 8034639C 003432FC  3A 73 00 04 */	addi r19, r19, 4
/* 803463A0 00343300  3A 94 00 01 */	addi r20, r20, 1
/* 803463A4 00343304  3A B5 00 04 */	addi r21, r21, 4
lbl_803463A8:
/* 803463A8 00343308  7C 14 E0 40 */	cmplw r20, r28
/* 803463AC 0034330C  41 80 FF B0 */	blt lbl_8034635C
/* 803463B0 00343310  38 1C 00 01 */	addi r0, r28, 1
/* 803463B4 00343314  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803463B8 00343318  54 00 10 3A */	slwi r0, r0, 2
/* 803463BC 0034331C  7C 03 02 14 */	add r0, r3, r0
/* 803463C0 00343320  90 01 00 10 */	stw r0, 0x10(r1)
lbl_803463C4:
/* 803463C4 00343324  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803463C8 00343328  3A 60 00 00 */	li r19, 0
/* 803463CC 0034332C  3A 80 00 1E */	li r20, 0x1e
/* 803463D0 00343330  3A A0 00 40 */	li r21, 0x40
/* 803463D4 00343334  38 03 00 08 */	addi r0, r3, 8
/* 803463D8 00343338  82 43 00 04 */	lwz r18, 4(r3)
/* 803463DC 0034333C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803463E0 00343340  48 00 00 38 */	b lbl_80346418
lbl_803463E4:
/* 803463E4 00343344  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803463E8 00343348  7E 84 A3 78 */	mr r4, r20
/* 803463EC 0034334C  7E A5 AB 78 */	mr r5, r21
/* 803463F0 00343350  48 00 15 FD */	bl HandleAnimatedUV__FPCUi9_GXTexMtx11_GXPTTexMtx
/* 803463F4 00343354  2C 03 00 00 */	cmpwi r3, 0
/* 803463F8 00343358  41 82 00 28 */	beq lbl_80346420
/* 803463FC 0034335C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80346400 00343360  54 60 10 3A */	slwi r0, r3, 2
/* 80346404 00343364  3A 73 00 01 */	addi r19, r19, 1
/* 80346408 00343368  3A 94 00 03 */	addi r20, r20, 3
/* 8034640C 0034336C  7C 04 02 14 */	add r0, r4, r0
/* 80346410 00343370  3A B5 00 03 */	addi r21, r21, 3
/* 80346414 00343374  90 01 00 10 */	stw r0, 0x10(r1)
lbl_80346418:
/* 80346418 00343378  7C 13 90 40 */	cmplw r19, r18
/* 8034641C 0034337C  41 80 FF C8 */	blt lbl_803463E4
lbl_80346420:
/* 80346420 00343380  88 1E 00 00 */	lbz r0, 0(r30)
/* 80346424 00343384  7C 00 07 75 */	extsb. r0, r0
/* 80346428 00343388  41 82 00 20 */	beq lbl_80346448
/* 8034642C 0034338C  7F C5 F3 78 */	mr r5, r30
/* 80346430 00343390  7F 66 DB 78 */	mr r6, r27
/* 80346434 00343394  38 61 00 34 */	addi r3, r1, 0x34
/* 80346438 00343398  38 81 00 38 */	addi r4, r1, 0x38
/* 8034643C 0034339C  38 E1 00 30 */	addi r7, r1, 0x30
/* 80346440 003433A0  39 01 00 2C */	addi r8, r1, 0x2c
/* 80346444 003433A4  48 00 11 49 */	bl HandleTransparency__FUiUiRC11CModelFlagsRUiRUi
lbl_80346448:
/* 80346448 003433A8  28 19 00 00 */	cmplwi r25, 0
/* 8034644C 003433AC  41 82 00 C4 */	beq lbl_80346510
/* 80346450 003433B0  C0 2D A9 90 */	lfs f1, sReflectionAlpha@sda21(r13)
/* 80346454 003433B4  C0 02 CB DC */	lfs f0, lbl_805AE8FC@sda21(r2)
/* 80346458 003433B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8034645C 003433BC  40 81 00 94 */	ble lbl_803464F0
/* 80346460 003433C0  28 1A 00 00 */	cmplwi r26, 0
/* 80346464 003433C4  41 82 00 3C */	beq lbl_803464A0
/* 80346468 003433C8  38 01 00 2C */	addi r0, r1, 0x2c
/* 8034646C 003433CC  7E E3 BB 78 */	mr r3, r23
/* 80346470 003433D0  90 01 00 08 */	stw r0, 8(r1)
/* 80346474 003433D4  7F E7 FB 78 */	mr r7, r31
/* 80346478 003433D8  7F 88 E3 78 */	mr r8, r28
/* 8034647C 003433DC  56 24 07 7E */	clrlwi r4, r17, 0x1d
/* 80346480 003433E0  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 80346484 003433E4  39 41 00 30 */	addi r10, r1, 0x30
/* 80346488 003433E8  81 21 00 38 */	lwz r9, 0x38(r1)
/* 8034648C 003433EC  38 A0 00 00 */	li r5, 0
/* 80346490 003433F0  48 00 08 F9 */	bl HandleReflection__13CCubeMaterialFb11_GXTexMapIDiUiUiUiUiRUiRUi
/* 80346494 003433F4  3B A0 00 01 */	li r29, 1
/* 80346498 003433F8  3B 9C 00 02 */	addi r28, r28, 2
/* 8034649C 003433FC  48 00 00 34 */	b lbl_803464D0
lbl_803464A0:
/* 803464A0 00343400  38 01 00 2C */	addi r0, r1, 0x2c
/* 803464A4 00343404  7E E3 BB 78 */	mr r3, r23
/* 803464A8 00343408  90 01 00 08 */	stw r0, 8(r1)
/* 803464AC 0034340C  7F E7 FB 78 */	mr r7, r31
/* 803464B0 00343410  7F 88 E3 78 */	mr r8, r28
/* 803464B4 00343414  39 41 00 30 */	addi r10, r1, 0x30
/* 803464B8 00343418  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 803464BC 0034341C  38 80 00 FF */	li r4, 0xff
/* 803464C0 00343420  81 21 00 38 */	lwz r9, 0x38(r1)
/* 803464C4 00343424  38 A0 00 00 */	li r5, 0
/* 803464C8 00343428  48 00 08 C1 */	bl HandleReflection__13CCubeMaterialFb11_GXTexMapIDiUiUiUiUiRUiRUi
/* 803464CC 0034342C  3B 9C 00 01 */	addi r28, r28, 1
lbl_803464D0:
/* 803464D0 00343430  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803464D4 00343434  3B FF 00 01 */	addi r31, r31, 1
/* 803464D8 00343438  80 81 00 38 */	lwz r4, 0x38(r1)
/* 803464DC 0034343C  7C 60 1A 14 */	add r3, r0, r3
/* 803464E0 00343440  38 04 00 01 */	addi r0, r4, 1
/* 803464E4 00343444  90 61 00 34 */	stw r3, 0x34(r1)
/* 803464E8 00343448  90 01 00 38 */	stw r0, 0x38(r1)
/* 803464EC 0034344C  48 00 00 24 */	b lbl_80346510
lbl_803464F0:
/* 803464F0 00343450  80 01 00 30 */	lwz r0, 0x30(r1)
/* 803464F4 00343454  54 00 BF BF */	rlwinm. r0, r0, 0x17, 0x1e, 0x1f
/* 803464F8 00343458  41 82 00 18 */	beq lbl_80346510
/* 803464FC 0034345C  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80346500 00343460  48 00 00 D1 */	bl DoPassthru__FUi
/* 80346504 00343464  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80346508 00343468  38 03 00 01 */	addi r0, r3, 1
/* 8034650C 0034346C  90 01 00 34 */	stw r0, 0x34(r1)
lbl_80346510:
/* 80346510 00343470  88 0D A9 9A */	lbz r0, sbRenderModelShadow@sda21(r13)
/* 80346514 00343474  28 00 00 00 */	cmplwi r0, 0
/* 80346518 00343478  41 82 00 14 */	beq lbl_8034652C
/* 8034651C 0034347C  7F E3 FB 78 */	mr r3, r31
/* 80346520 00343480  7F 84 E3 78 */	mr r4, r28
/* 80346524 00343484  48 00 0D 01 */	bl DoModelShadow__FUiUi
/* 80346528 00343488  3B 9C 00 01 */	addi r28, r28, 1
lbl_8034652C:
/* 8034652C 0034348C  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 80346530 00343490  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80346534 00343494  38 84 53 EC */	addi r4, r4, sGXState__3CGX@l
/* 80346538 00343498  88 04 00 51 */	lbz r0, 0x51(r4)
/* 8034653C 0034349C  7C 00 18 40 */	cmplw r0, r3
/* 80346540 003434A0  41 82 00 0C */	beq lbl_8034654C
/* 80346544 003434A4  9B A4 00 51 */	stb r29, 0x51(r4)
/* 80346548 003434A8  48 03 4D 71 */	bl GXSetNumIndStages
lbl_8034654C:
/* 8034654C 003434AC  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346550 003434B0  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80346554 003434B4  38 83 53 EC */	addi r4, r3, sGXState__3CGX@l
/* 80346558 003434B8  88 04 00 50 */	lbz r0, 0x50(r4)
/* 8034655C 003434BC  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80346560 003434C0  7C 00 18 40 */	cmplw r0, r3
/* 80346564 003434C4  41 82 00 0C */	beq lbl_80346570
/* 80346568 003434C8  98 64 00 50 */	stb r3, 0x50(r4)
/* 8034656C 003434CC  48 03 56 61 */	bl GXSetNumTevStages
lbl_80346570:
/* 80346570 003434D0  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 80346574 003434D4  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 80346578 003434D8  38 84 53 EC */	addi r4, r4, sGXState__3CGX@l
/* 8034657C 003434DC  88 04 00 4F */	lbz r0, 0x4f(r4)
/* 80346580 003434E0  7C 03 00 40 */	cmplw r3, r0
/* 80346584 003434E4  41 82 00 0C */	beq lbl_80346590
/* 80346588 003434E8  9B 84 00 4F */	stb r28, 0x4f(r4)
/* 8034658C 003434EC  48 03 1C D9 */	bl GXSetNumTexGens
lbl_80346590:
/* 80346590 003434F0  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346594 003434F4  57 06 06 3E */	clrlwi r6, r24, 0x18
/* 80346598 003434F8  38 A3 53 EC */	addi r5, r3, sGXState__3CGX@l
/* 8034659C 003434FC  88 65 00 4D */	lbz r3, 0x4d(r5)
/* 803465A0 00343500  88 05 00 4C */	lbz r0, 0x4c(r5)
/* 803465A4 00343504  7C 86 18 50 */	subf r4, r6, r3
/* 803465A8 00343508  7C 63 30 50 */	subf r3, r3, r6
/* 803465AC 0034350C  7C 83 1B 78 */	or r3, r4, r3
/* 803465B0 00343510  9B 05 00 4E */	stb r24, 0x4e(r5)
/* 803465B4 00343514  50 60 0F FE */	rlwimi r0, r3, 1, 0x1f, 0x1f
/* 803465B8 00343518  98 05 00 4C */	stb r0, 0x4c(r5)
lbl_803465BC:
/* 803465BC 0034351C  BA 21 00 44 */	lmw r17, 0x44(r1)
/* 803465C0 00343520  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803465C4 00343524  7C 08 03 A6 */	mtlr r0
/* 803465C8 00343528  38 21 00 80 */	addi r1, r1, 0x80
/* 803465CC 0034352C  4E 80 00 20 */	blr

.global DoPassthru__FUi
DoPassthru__FUi:
/* 803465D0 00343530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803465D4 00343534  7C 08 02 A6 */	mflr r0
/* 803465D8 00343538  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 803465DC 0034353C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803465E0 00343540  38 04 53 EC */	addi r0, r4, sGXState__3CGX@l
/* 803465E4 00343544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803465E8 00343548  93 C1 00 08 */	stw r30, 8(r1)
/* 803465EC 0034354C  7C 7E 1B 78 */	mr r30, r3
/* 803465F0 00343550  1C BE 00 1C */	mulli r5, r30, 0x1c
/* 803465F4 00343554  7C 80 2A 14 */	add r4, r0, r5
/* 803465F8 00343558  80 04 00 68 */	lwz r0, 0x68(r4)
/* 803465FC 0034355C  3B E4 00 68 */	addi r31, r4, 0x68
/* 80346600 00343560  28 00 3D EF */	cmplwi r0, 0x3def
/* 80346604 00343564  41 82 00 20 */	beq lbl_80346624
/* 80346608 00343568  38 00 3D EF */	li r0, 0x3def
/* 8034660C 0034356C  38 80 00 0F */	li r4, 0xf
/* 80346610 00343570  90 1F 00 00 */	stw r0, 0(r31)
/* 80346614 00343574  38 A0 00 0F */	li r5, 0xf
/* 80346618 00343578  38 C0 00 0F */	li r6, 0xf
/* 8034661C 0034357C  38 E0 00 00 */	li r7, 0
/* 80346620 00343580  48 03 4E 85 */	bl GXSetTevColorIn
lbl_80346624:
/* 80346624 00343584  80 1F 00 04 */	lwz r0, 4(r31)
/* 80346628 00343588  28 00 1C E7 */	cmplwi r0, 0x1ce7
/* 8034662C 0034358C  41 82 00 24 */	beq lbl_80346650
/* 80346630 00343590  38 00 1C E7 */	li r0, 0x1ce7
/* 80346634 00343594  7F C3 F3 78 */	mr r3, r30
/* 80346638 00343598  90 1F 00 04 */	stw r0, 4(r31)
/* 8034663C 0034359C  38 80 00 07 */	li r4, 7
/* 80346640 003435A0  38 A0 00 07 */	li r5, 7
/* 80346644 003435A4  38 C0 00 07 */	li r6, 7
/* 80346648 003435A8  38 E0 00 00 */	li r7, 0
/* 8034664C 003435AC  48 03 4E 9D */	bl GXSetTevAlphaIn
lbl_80346650:
/* 80346650 003435B0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80346654 003435B4  3C 03 FF 01 */	addis r0, r3, 0xff01
/* 80346658 003435B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8034665C 003435BC  41 82 00 24 */	beq lbl_80346680
/* 80346660 003435C0  3C 80 01 00 */	lis r4, 0x00FFFFFF@ha
/* 80346664 003435C4  7F C3 F3 78 */	mr r3, r30
/* 80346668 003435C8  38 04 FF FF */	addi r0, r4, 0x00FFFFFF@l
/* 8034666C 003435CC  38 80 00 FF */	li r4, 0xff
/* 80346670 003435D0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80346674 003435D4  38 A0 00 FF */	li r5, 0xff
/* 80346678 003435D8  38 C0 00 FF */	li r6, 0xff
/* 8034667C 003435DC  48 03 53 79 */	bl GXSetTevOrder
lbl_80346680:
/* 80346680 003435E0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80346684 003435E4  28 00 00 00 */	cmplwi r0, 0
/* 80346688 003435E8  41 82 00 14 */	beq lbl_8034669C
/* 8034668C 003435EC  38 00 00 00 */	li r0, 0
/* 80346690 003435F0  7F C3 F3 78 */	mr r3, r30
/* 80346694 003435F4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80346698 003435F8  48 03 4C 49 */	bl GXSetTevDirect
lbl_8034669C:
/* 8034669C 003435FC  7F C3 F3 78 */	mr r3, r30
/* 803466A0 00343600  4B FC 15 B1 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 803466A4 00343604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803466A8 00343608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803466AC 0034360C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803466B0 00343610  7C 08 03 A6 */	mtlr r0
/* 803466B4 00343614  38 21 00 10 */	addi r1, r1, 0x10
/* 803466B8 00343618  4E 80 00 20 */	blr

.global HandleDepth__FUiUi
HandleDepth__FUiUi:
/* 803466BC 0034361C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803466C0 00343620  7C 08 02 A6 */	mflr r0
/* 803466C4 00343624  7C 87 23 78 */	mr r7, r4
/* 803466C8 00343628  90 01 00 14 */	stw r0, 0x14(r1)
/* 803466CC 0034362C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803466D0 00343630  40 82 00 0C */	bne lbl_803466DC
/* 803466D4 00343634  38 80 00 07 */	li r4, 7
/* 803466D8 00343638  48 00 00 38 */	b lbl_80346710
lbl_803466DC:
/* 803466DC 0034363C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 803466E0 00343640  41 82 00 1C */	beq lbl_803466FC
/* 803466E4 00343644  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 803466E8 00343648  41 82 00 0C */	beq lbl_803466F4
/* 803466EC 0034364C  38 80 00 04 */	li r4, 4
/* 803466F0 00343650  48 00 00 20 */	b lbl_80346710
lbl_803466F4:
/* 803466F4 00343654  38 80 00 06 */	li r4, 6
/* 803466F8 00343658  48 00 00 18 */	b lbl_80346710
lbl_803466FC:
/* 803466FC 0034365C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80346700 00343660  41 82 00 0C */	beq lbl_8034670C
/* 80346704 00343664  38 80 00 01 */	li r4, 1
/* 80346708 00343668  48 00 00 08 */	b lbl_80346710
lbl_8034670C:
/* 8034670C 0034366C  38 80 00 03 */	li r4, 3
lbl_80346710:
/* 80346710 00343670  54 66 07 BC */	rlwinm r6, r3, 0, 0x1e, 0x1e
/* 80346714 00343674  54 85 15 BA */	rlwinm r5, r4, 2, 0x16, 0x1d
/* 80346718 00343678  28 06 00 02 */	cmplwi r6, 2
/* 8034671C 0034367C  38 60 00 00 */	li r3, 0
/* 80346720 00343680  40 82 00 10 */	bne lbl_80346730
/* 80346724 00343684  54 E0 06 31 */	rlwinm. r0, r7, 0, 0x18, 0x18
/* 80346728 00343688  41 82 00 08 */	beq lbl_80346730
/* 8034672C 0034368C  38 60 00 01 */	li r3, 1
lbl_80346730:
/* 80346730 00343690  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 80346734 00343694  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346738 00343698  60 00 00 01 */	ori r0, r0, 1
/* 8034673C 0034369C  7C A5 03 78 */	or r5, r5, r0
/* 80346740 003436A0  38 63 53 EC */	addi r3, r3, sGXState__3CGX@l
/* 80346744 003436A4  88 03 00 52 */	lbz r0, 0x52(r3)
/* 80346748 003436A8  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 8034674C 003436AC  7C 05 00 40 */	cmplw r5, r0
/* 80346750 003436B0  41 82 00 2C */	beq lbl_8034677C
/* 80346754 003436B4  28 06 00 02 */	cmplwi r6, 2
/* 80346758 003436B8  98 A3 00 52 */	stb r5, 0x52(r3)
/* 8034675C 003436BC  38 60 00 01 */	li r3, 1
/* 80346760 003436C0  38 A0 00 00 */	li r5, 0
/* 80346764 003436C4  40 82 00 10 */	bne lbl_80346774
/* 80346768 003436C8  54 E0 06 31 */	rlwinm. r0, r7, 0, 0x18, 0x18
/* 8034676C 003436CC  41 82 00 08 */	beq lbl_80346774
/* 80346770 003436D0  38 A0 00 01 */	li r5, 1
lbl_80346774:
/* 80346774 003436D4  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 80346778 003436D8  48 03 57 E1 */	bl GXSetZMode
lbl_8034677C:
/* 8034677C 003436DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80346780 003436E0  7C 08 03 A6 */	mtlr r0
/* 80346784 003436E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80346788 003436E8  4E 80 00 20 */	blr

.global HandleColorChannels__FUiUi
HandleColorChannels__FUiUi:
/* 8034678C 003436EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80346790 003436F0  7C 08 02 A6 */	mflr r0
/* 80346794 003436F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80346798 003436F8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8034679C 003436FC  7C 9F 23 78 */	mr r31, r4
/* 803467A0 00343700  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803467A4 00343704  7C 7E 1B 78 */	mr r30, r3
/* 803467A8 00343708  93 A1 00 34 */	stw r29, 0x34(r1)
/* 803467AC 0034370C  88 0D A9 9A */	lbz r0, sbRenderModelShadow@sda21(r13)
/* 803467B0 00343710  28 00 00 00 */	cmplwi r0, 0
/* 803467B4 00343714  41 82 01 5C */	beq lbl_80346910
/* 803467B8 00343718  28 1E 00 00 */	cmplwi r30, 0
/* 803467BC 0034371C  41 82 01 4C */	beq lbl_80346908
/* 803467C0 00343720  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 803467C4 00343724  80 A2 CB B8 */	lwz r5, lbl_805AE8D8@sda21(r2)
/* 803467C8 00343728  3B A3 53 EC */	addi r29, r3, sGXState__3CGX@l
/* 803467CC 0034372C  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 803467D0 00343730  7C 05 00 40 */	cmplw r5, r0
/* 803467D4 00343734  41 82 00 18 */	beq lbl_803467EC
/* 803467D8 00343738  90 BD 00 3C */	stw r5, 0x3c(r29)
/* 803467DC 0034373C  38 81 00 24 */	addi r4, r1, 0x24
/* 803467E0 00343740  38 60 00 05 */	li r3, 5
/* 803467E4 00343744  90 A1 00 24 */	stw r5, 0x24(r1)
/* 803467E8 00343748  48 03 31 61 */	bl GXSetChanAmbColor
lbl_803467EC:
/* 803467EC 0034374C  80 A2 CB BC */	lwz r5, lbl_805AE8DC@sda21(r2)
/* 803467F0 00343750  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 803467F4 00343754  7C 05 00 40 */	cmplw r5, r0
/* 803467F8 00343758  41 82 00 18 */	beq lbl_80346810
/* 803467FC 0034375C  90 BD 00 44 */	stw r5, 0x44(r29)
/* 80346800 00343760  38 81 00 20 */	addi r4, r1, 0x20
/* 80346804 00343764  38 60 00 05 */	li r3, 5
/* 80346808 00343768  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8034680C 0034376C  48 03 32 31 */	bl GXSetChanMatColor
lbl_80346810:
/* 80346810 00343770  89 2D A9 A1 */	lbz r9, sChannel1EnableLightMask@sda21(r13)
/* 80346814 00343774  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346818 00343778  38 E3 53 EC */	addi r7, r3, sGXState__3CGX@l
/* 8034681C 0034377C  38 00 00 01 */	li r0, 1
/* 80346820 00343780  2C 09 00 00 */	cmpwi r9, 0
/* 80346824 00343784  A1 07 00 32 */	lhz r8, 0x32(r7)
/* 80346828 00343788  40 82 00 08 */	bne lbl_80346830
/* 8034682C 0034378C  38 00 00 00 */	li r0, 0
lbl_80346830:
/* 80346830 00343790  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 80346834 00343794  88 6D A8 16 */	lbz r3, mLightActive__9CGraphics@sda21(r13)
/* 80346838 00343798  88 0D A9 A0 */	lbz r0, sChannel0DisableLightMask@sda21(r13)
/* 8034683C 0034379C  51 25 1D 78 */	rlwimi r5, r9, 3, 0x15, 0x1c
/* 80346840 003437A0  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 80346844 003437A4  60 A5 30 00 */	ori r5, r5, 0x3000
/* 80346848 003437A8  7C 60 00 78 */	andc r0, r3, r0
/* 8034684C 003437AC  38 C4 53 EC */	addi r6, r4, sGXState__3CGX@l
/* 80346850 003437B0  B0 A7 00 36 */	sth r5, 0x36(r7)
/* 80346854 003437B4  54 09 06 3F */	clrlwi. r9, r0, 0x18
/* 80346858 003437B8  7C 65 40 50 */	subf r3, r5, r8
/* 8034685C 003437BC  7C 08 28 50 */	subf r0, r8, r5
/* 80346860 003437C0  88 86 00 4C */	lbz r4, 0x4c(r6)
/* 80346864 003437C4  7C 60 03 78 */	or r0, r3, r0
/* 80346868 003437C8  A0 66 00 30 */	lhz r3, 0x30(r6)
/* 8034686C 003437CC  50 04 1F 7A */	rlwimi r4, r0, 3, 0x1d, 0x1d
/* 80346870 003437D0  57 E5 00 3C */	rlwinm r5, r31, 0, 0, 0x1e
/* 80346874 003437D4  98 86 00 4C */	stb r4, 0x4c(r6)
/* 80346878 003437D8  41 82 00 0C */	beq lbl_80346884
/* 8034687C 003437DC  55 20 1D 78 */	rlwinm r0, r9, 3, 0x15, 0x1c
/* 80346880 003437E0  7F E5 03 78 */	or r5, r31, r0
lbl_80346884:
/* 80346884 003437E4  7C 85 18 50 */	subf r4, r5, r3
/* 80346888 003437E8  7C 63 28 50 */	subf r3, r3, r5
/* 8034688C 003437EC  88 06 00 4C */	lbz r0, 0x4c(r6)
/* 80346890 003437F0  7C 83 1B 78 */	or r3, r4, r3
/* 80346894 003437F4  50 60 17 BC */	rlwimi r0, r3, 2, 0x1e, 0x1e
/* 80346898 003437F8  28 09 00 00 */	cmplwi r9, 0
/* 8034689C 003437FC  B0 A6 00 34 */	sth r5, 0x34(r6)
/* 803468A0 00343800  98 06 00 4C */	stb r0, 0x4c(r6)
/* 803468A4 00343804  41 82 00 34 */	beq lbl_803468D8
/* 803468A8 00343808  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 803468AC 0034380C  80 A2 CB BC */	lwz r5, lbl_805AE8DC@sda21(r2)
/* 803468B0 00343810  38 63 53 EC */	addi r3, r3, sGXState__3CGX@l
/* 803468B4 00343814  80 03 00 40 */	lwz r0, 0x40(r3)
/* 803468B8 00343818  7C 05 00 40 */	cmplw r5, r0
/* 803468BC 0034381C  41 82 00 4C */	beq lbl_80346908
/* 803468C0 00343820  90 A3 00 40 */	stw r5, 0x40(r3)
/* 803468C4 00343824  38 81 00 1C */	addi r4, r1, 0x1c
/* 803468C8 00343828  38 60 00 04 */	li r3, 4
/* 803468CC 0034382C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803468D0 00343830  48 03 31 6D */	bl GXSetChanMatColor
/* 803468D4 00343834  48 00 00 34 */	b lbl_80346908
lbl_803468D8:
/* 803468D8 00343838  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 803468DC 0034383C  38 63 53 EC */	addi r3, r3, sGXState__3CGX@l
/* 803468E0 00343840  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 803468E4 00343844  80 03 00 40 */	lwz r0, 0x40(r3)
/* 803468E8 00343848  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 803468EC 0034384C  7C 05 00 40 */	cmplw r5, r0
/* 803468F0 00343850  41 82 00 18 */	beq lbl_80346908
/* 803468F4 00343854  90 A3 00 40 */	stw r5, 0x40(r3)
/* 803468F8 00343858  38 81 00 18 */	addi r4, r1, 0x18
/* 803468FC 0034385C  38 60 00 04 */	li r3, 4
/* 80346900 00343860  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80346904 00343864  48 03 31 39 */	bl GXSetChanMatColor
lbl_80346908:
/* 80346908 00343868  38 60 00 02 */	li r3, 2
/* 8034690C 0034386C  48 00 01 68 */	b lbl_80346A74
lbl_80346910:
/* 80346910 00343870  28 1E 00 02 */	cmplwi r30, 2
/* 80346914 00343874  40 82 00 58 */	bne lbl_8034696C
/* 80346918 00343878  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 8034691C 0034387C  80 A2 CB B8 */	lwz r5, lbl_805AE8D8@sda21(r2)
/* 80346920 00343880  3B A3 53 EC */	addi r29, r3, sGXState__3CGX@l
/* 80346924 00343884  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 80346928 00343888  7C 05 00 40 */	cmplw r5, r0
/* 8034692C 0034388C  41 82 00 18 */	beq lbl_80346944
/* 80346930 00343890  90 BD 00 3C */	stw r5, 0x3c(r29)
/* 80346934 00343894  38 81 00 14 */	addi r4, r1, 0x14
/* 80346938 00343898  38 60 00 05 */	li r3, 5
/* 8034693C 0034389C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80346940 003438A0  48 03 30 09 */	bl GXSetChanAmbColor
lbl_80346944:
/* 80346944 003438A4  80 A2 CB BC */	lwz r5, lbl_805AE8DC@sda21(r2)
/* 80346948 003438A8  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 8034694C 003438AC  7C 05 00 40 */	cmplw r5, r0
/* 80346950 003438B0  41 82 00 48 */	beq lbl_80346998
/* 80346954 003438B4  90 BD 00 44 */	stw r5, 0x44(r29)
/* 80346958 003438B8  38 81 00 10 */	addi r4, r1, 0x10
/* 8034695C 003438BC  38 60 00 05 */	li r3, 5
/* 80346960 003438C0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80346964 003438C4  48 03 30 D9 */	bl GXSetChanMatColor
/* 80346968 003438C8  48 00 00 30 */	b lbl_80346998
lbl_8034696C:
/* 8034696C 003438CC  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346970 003438D0  38 A0 40 00 */	li r5, 0x4000
/* 80346974 003438D4  38 C3 53 EC */	addi r6, r3, sGXState__3CGX@l
/* 80346978 003438D8  A0 66 00 32 */	lhz r3, 0x32(r6)
/* 8034697C 003438DC  88 06 00 4C */	lbz r0, 0x4c(r6)
/* 80346980 003438E0  38 83 C0 00 */	addi r4, r3, -16384
/* 80346984 003438E4  20 63 40 00 */	subfic r3, r3, 0x4000
/* 80346988 003438E8  7C 83 1B 78 */	or r3, r4, r3
/* 8034698C 003438EC  B0 A6 00 36 */	sth r5, 0x36(r6)
/* 80346990 003438F0  50 60 1F 7A */	rlwimi r0, r3, 3, 0x1d, 0x1d
/* 80346994 003438F4  98 06 00 4C */	stb r0, 0x4c(r6)
lbl_80346998:
/* 80346998 003438F8  28 1E 00 01 */	cmplwi r30, 1
/* 8034699C 003438FC  41 80 00 A8 */	blt lbl_80346A44
/* 803469A0 00343900  88 8D A8 16 */	lbz r4, mLightActive__9CGraphics@sda21(r13)
/* 803469A4 00343904  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 803469A8 00343908  39 03 53 EC */	addi r8, r3, sGXState__3CGX@l
/* 803469AC 0034390C  57 E7 00 3C */	rlwinm r7, r31, 0, 0, 0x1e
/* 803469B0 00343910  2C 04 00 00 */	cmpwi r4, 0
/* 803469B4 00343914  A1 28 00 30 */	lhz r9, 0x30(r8)
/* 803469B8 00343918  41 82 00 0C */	beq lbl_803469C4
/* 803469BC 0034391C  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 803469C0 00343920  7F E7 03 78 */	or r7, r31, r0
lbl_803469C4:
/* 803469C4 00343924  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 803469C8 00343928  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 803469CC 0034392C  38 C3 53 EC */	addi r6, r3, sGXState__3CGX@l
/* 803469D0 00343930  7C A7 48 50 */	subf r5, r7, r9
/* 803469D4 00343934  7C 89 38 50 */	subf r4, r9, r7
/* 803469D8 00343938  88 66 00 4C */	lbz r3, 0x4c(r6)
/* 803469DC 0034393C  7C A4 23 78 */	or r4, r5, r4
/* 803469E0 00343940  B0 E8 00 34 */	sth r7, 0x34(r8)
/* 803469E4 00343944  50 83 17 BC */	rlwimi r3, r4, 2, 0x1e, 0x1e
/* 803469E8 00343948  98 66 00 4C */	stb r3, 0x4c(r6)
/* 803469EC 0034394C  41 82 00 2C */	beq lbl_80346A18
/* 803469F0 00343950  80 A2 CB BC */	lwz r5, lbl_805AE8DC@sda21(r2)
/* 803469F4 00343954  80 06 00 40 */	lwz r0, 0x40(r6)
/* 803469F8 00343958  7C 05 00 40 */	cmplw r5, r0
/* 803469FC 0034395C  41 82 00 74 */	beq lbl_80346A70
/* 80346A00 00343960  90 A6 00 40 */	stw r5, 0x40(r6)
/* 80346A04 00343964  38 81 00 0C */	addi r4, r1, 0xc
/* 80346A08 00343968  38 60 00 04 */	li r3, 4
/* 80346A0C 0034396C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80346A10 00343970  48 03 30 2D */	bl GXSetChanMatColor
/* 80346A14 00343974  48 00 00 5C */	b lbl_80346A70
lbl_80346A18:
/* 80346A18 00343978  80 A6 00 38 */	lwz r5, 0x38(r6)
/* 80346A1C 0034397C  80 06 00 40 */	lwz r0, 0x40(r6)
/* 80346A20 00343980  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80346A24 00343984  7C 05 00 40 */	cmplw r5, r0
/* 80346A28 00343988  41 82 00 48 */	beq lbl_80346A70
/* 80346A2C 0034398C  90 A6 00 40 */	stw r5, 0x40(r6)
/* 80346A30 00343990  38 81 00 08 */	addi r4, r1, 8
/* 80346A34 00343994  38 60 00 04 */	li r3, 4
/* 80346A38 00343998  90 A1 00 08 */	stw r5, 8(r1)
/* 80346A3C 0034399C  48 03 30 01 */	bl GXSetChanMatColor
/* 80346A40 003439A0  48 00 00 30 */	b lbl_80346A70
lbl_80346A44:
/* 80346A44 003439A4  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346A48 003439A8  38 A0 40 00 */	li r5, 0x4000
/* 80346A4C 003439AC  38 C3 53 EC */	addi r6, r3, sGXState__3CGX@l
/* 80346A50 003439B0  A0 66 00 30 */	lhz r3, 0x30(r6)
/* 80346A54 003439B4  88 06 00 4C */	lbz r0, 0x4c(r6)
/* 80346A58 003439B8  38 83 C0 00 */	addi r4, r3, -16384
/* 80346A5C 003439BC  20 63 40 00 */	subfic r3, r3, 0x4000
/* 80346A60 003439C0  7C 83 1B 78 */	or r3, r4, r3
/* 80346A64 003439C4  B0 A6 00 34 */	sth r5, 0x34(r6)
/* 80346A68 003439C8  50 60 17 BC */	rlwimi r0, r3, 2, 0x1e, 0x1e
/* 80346A6C 003439CC  98 06 00 4C */	stb r0, 0x4c(r6)
lbl_80346A70:
/* 80346A70 003439D0  7F C3 F3 78 */	mr r3, r30
lbl_80346A74:
/* 80346A74 003439D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80346A78 003439D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80346A7C 003439DC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80346A80 003439E0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80346A84 003439E4  7C 08 03 A6 */	mtlr r0
/* 80346A88 003439E8  38 21 00 40 */	addi r1, r1, 0x40
/* 80346A8C 003439EC  4E 80 00 20 */	blr

.global SetCurrentBlack__13CCubeMaterialCFv
SetCurrentBlack__13CCubeMaterialCFv:
/* 80346A90 003439F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80346A94 003439F4  7C 08 02 A6 */	mflr r0
/* 80346A98 003439F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80346A9C 003439FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80346AA0 00343A00  93 C1 00 08 */	stw r30, 8(r1)
/* 80346AA4 00343A04  80 83 00 00 */	lwz r4, 0(r3)
/* 80346AA8 00343A08  80 64 00 04 */	lwz r3, 4(r4)
/* 80346AAC 00343A0C  80 04 00 00 */	lwz r0, 0(r4)
/* 80346AB0 00343A10  54 63 10 3A */	slwi r3, r3, 2
/* 80346AB4 00343A14  7C 64 1A 14 */	add r3, r4, r3
/* 80346AB8 00343A18  54 00 06 B7 */	rlwinm. r0, r0, 0, 0x1a, 0x1b
/* 80346ABC 00343A1C  83 C3 00 08 */	lwz r30, 8(r3)
/* 80346AC0 00343A20  41 82 00 40 */	beq lbl_80346B00
/* 80346AC4 00343A24  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346AC8 00343A28  3B E3 53 EC */	addi r31, r3, sGXState__3CGX@l
/* 80346ACC 00343A2C  A0 1F 00 56 */	lhz r0, 0x56(r31)
/* 80346AD0 00343A30  28 00 00 21 */	cmplwi r0, 0x21
/* 80346AD4 00343A34  41 82 00 64 */	beq lbl_80346B38
/* 80346AD8 00343A38  38 60 00 21 */	li r3, 0x21
/* 80346ADC 00343A3C  4B D6 D8 9D */	bl update_fog__3CGXFUi
/* 80346AE0 00343A40  38 00 00 21 */	li r0, 0x21
/* 80346AE4 00343A44  38 60 00 01 */	li r3, 1
/* 80346AE8 00343A48  B0 1F 00 56 */	sth r0, 0x56(r31)
/* 80346AEC 00343A4C  38 80 00 00 */	li r4, 0
/* 80346AF0 00343A50  38 A0 00 01 */	li r5, 1
/* 80346AF4 00343A54  38 C0 00 00 */	li r6, 0
/* 80346AF8 00343A58  48 03 53 B5 */	bl GXSetBlendMode
/* 80346AFC 00343A5C  48 00 00 3C */	b lbl_80346B38
lbl_80346B00:
/* 80346B00 00343A60  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346B04 00343A64  3B E3 53 EC */	addi r31, r3, sGXState__3CGX@l
/* 80346B08 00343A68  A0 1F 00 56 */	lhz r0, 0x56(r31)
/* 80346B0C 00343A6C  28 00 00 05 */	cmplwi r0, 5
/* 80346B10 00343A70  41 82 00 28 */	beq lbl_80346B38
/* 80346B14 00343A74  38 60 00 05 */	li r3, 5
/* 80346B18 00343A78  4B D6 D8 61 */	bl update_fog__3CGXFUi
/* 80346B1C 00343A7C  38 00 00 05 */	li r0, 5
/* 80346B20 00343A80  38 60 00 01 */	li r3, 1
/* 80346B24 00343A84  B0 1F 00 56 */	sth r0, 0x56(r31)
/* 80346B28 00343A88  38 80 00 01 */	li r4, 1
/* 80346B2C 00343A8C  38 A0 00 00 */	li r5, 0
/* 80346B30 00343A90  38 C0 00 00 */	li r6, 0
/* 80346B34 00343A94  48 03 53 79 */	bl GXSetBlendMode
lbl_80346B38:
/* 80346B38 00343A98  7F C3 F3 78 */	mr r3, r30
/* 80346B3C 00343A9C  4B FC 13 C1 */	bl SetVtxDescv_Compressed__3CGXFUi
/* 80346B40 00343AA0  88 0D A9 99 */	lbz r0, lbl_805A9559@sda21(r13)
/* 80346B44 00343AA4  38 E0 00 0F */	li r7, 0xf
/* 80346B48 00343AA8  28 00 00 00 */	cmplwi r0, 0
/* 80346B4C 00343AAC  41 82 00 08 */	beq lbl_80346B54
/* 80346B50 00343AB0  38 E0 00 0C */	li r7, 0xc
lbl_80346B54:
/* 80346B54 00343AB4  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346B58 00343AB8  54 E4 7B 20 */	rlwinm r4, r7, 0xf, 0xc, 0x10
/* 80346B5C 00343ABC  3B E3 53 EC */	addi r31, r3, sGXState__3CGX@l
/* 80346B60 00343AC0  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80346B64 00343AC4  60 83 3D EF */	ori r3, r4, 0x3def
/* 80346B68 00343AC8  7C 03 00 40 */	cmplw r3, r0
/* 80346B6C 00343ACC  41 82 00 1C */	beq lbl_80346B88
/* 80346B70 00343AD0  90 7F 00 68 */	stw r3, 0x68(r31)
/* 80346B74 00343AD4  38 60 00 00 */	li r3, 0
/* 80346B78 00343AD8  38 80 00 0F */	li r4, 0xf
/* 80346B7C 00343ADC  38 A0 00 0F */	li r5, 0xf
/* 80346B80 00343AE0  38 C0 00 0F */	li r6, 0xf
/* 80346B84 00343AE4  48 03 49 21 */	bl GXSetTevColorIn
lbl_80346B88:
/* 80346B88 00343AE8  88 0D A9 99 */	lbz r0, lbl_805A9559@sda21(r13)
/* 80346B8C 00343AEC  38 E0 00 07 */	li r7, 7
/* 80346B90 00343AF0  28 00 00 00 */	cmplwi r0, 0
/* 80346B94 00343AF4  41 82 00 08 */	beq lbl_80346B9C
/* 80346B98 00343AF8  38 E0 00 06 */	li r7, 6
lbl_80346B9C:
/* 80346B9C 00343AFC  54 E3 7B 20 */	rlwinm r3, r7, 0xf, 0xc, 0x10
/* 80346BA0 00343B00  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80346BA4 00343B04  60 63 1C E7 */	ori r3, r3, 0x1ce7
/* 80346BA8 00343B08  7C 03 00 40 */	cmplw r3, r0
/* 80346BAC 00343B0C  41 82 00 1C */	beq lbl_80346BC8
/* 80346BB0 00343B10  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 80346BB4 00343B14  38 60 00 00 */	li r3, 0
/* 80346BB8 00343B18  38 80 00 07 */	li r4, 7
/* 80346BBC 00343B1C  38 A0 00 07 */	li r5, 7
/* 80346BC0 00343B20  38 C0 00 07 */	li r6, 7
/* 80346BC4 00343B24  48 03 49 25 */	bl GXSetTevAlphaIn
lbl_80346BC8:
/* 80346BC8 00343B28  88 1F 00 81 */	lbz r0, 0x81(r31)
/* 80346BCC 00343B2C  2C 00 00 00 */	cmpwi r0, 0
/* 80346BD0 00343B30  41 82 00 18 */	beq lbl_80346BE8
/* 80346BD4 00343B34  38 00 00 00 */	li r0, 0
/* 80346BD8 00343B38  38 60 00 00 */	li r3, 0
/* 80346BDC 00343B3C  98 1F 00 81 */	stb r0, 0x81(r31)
/* 80346BE0 00343B40  38 80 00 00 */	li r4, 0
/* 80346BE4 00343B44  48 03 4B E1 */	bl GXSetTevKAlphaSel
lbl_80346BE8:
/* 80346BE8 00343B48  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346BEC 00343B4C  38 A3 53 EC */	addi r5, r3, sGXState__3CGX@l
/* 80346BF0 00343B50  80 65 02 28 */	lwz r3, 0x228(r5)
/* 80346BF4 00343B54  3C 03 FF E2 */	addis r0, r3, 0xffe2
/* 80346BF8 00343B58  28 00 94 01 */	cmplwi r0, 0x9401
/* 80346BFC 00343B5C  41 82 00 2C */	beq lbl_80346C28
/* 80346C00 00343B60  3C 80 00 1F */	lis r4, 0x001E9401@ha
/* 80346C04 00343B64  38 60 00 00 */	li r3, 0
/* 80346C08 00343B68  38 04 94 01 */	addi r0, r4, 0x001E9401@l
/* 80346C0C 00343B6C  38 80 00 01 */	li r4, 1
/* 80346C10 00343B70  90 05 02 28 */	stw r0, 0x228(r5)
/* 80346C14 00343B74  38 A0 00 00 */	li r5, 0
/* 80346C18 00343B78  38 C0 00 3C */	li r6, 0x3c
/* 80346C1C 00343B7C  38 E0 00 00 */	li r7, 0
/* 80346C20 00343B80  39 00 00 7D */	li r8, 0x7d
/* 80346C24 00343B84  48 03 13 71 */	bl GXSetTexCoordGen2
lbl_80346C28:
/* 80346C28 00343B88  38 60 00 00 */	li r3, 0
/* 80346C2C 00343B8C  4B FC 10 25 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 80346C30 00343B90  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80346C34 00343B94  3C 03 FF 01 */	addis r0, r3, 0xff01
/* 80346C38 00343B98  28 00 FF FF */	cmplwi r0, 0xffff
/* 80346C3C 00343B9C  41 82 00 24 */	beq lbl_80346C60
/* 80346C40 00343BA0  3C 80 01 00 */	lis r4, 0x00FFFFFF@ha
/* 80346C44 00343BA4  38 60 00 00 */	li r3, 0
/* 80346C48 00343BA8  38 04 FF FF */	addi r0, r4, 0x00FFFFFF@l
/* 80346C4C 00343BAC  38 80 00 FF */	li r4, 0xff
/* 80346C50 00343BB0  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 80346C54 00343BB4  38 A0 00 FF */	li r5, 0xff
/* 80346C58 00343BB8  38 C0 00 FF */	li r6, 0xff
/* 80346C5C 00343BBC  48 03 4D 99 */	bl GXSetTevOrder
lbl_80346C60:
/* 80346C60 00343BC0  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346C64 00343BC4  38 83 53 EC */	addi r4, r3, sGXState__3CGX@l
/* 80346C68 00343BC8  88 04 00 50 */	lbz r0, 0x50(r4)
/* 80346C6C 00343BCC  28 00 00 01 */	cmplwi r0, 1
/* 80346C70 00343BD0  41 82 00 14 */	beq lbl_80346C84
/* 80346C74 00343BD4  38 00 00 01 */	li r0, 1
/* 80346C78 00343BD8  38 60 00 01 */	li r3, 1
/* 80346C7C 00343BDC  98 04 00 50 */	stb r0, 0x50(r4)
/* 80346C80 00343BE0  48 03 4F 4D */	bl GXSetNumTevStages
lbl_80346C84:
/* 80346C84 00343BE4  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346C88 00343BE8  38 E0 00 00 */	li r7, 0
/* 80346C8C 00343BEC  38 C3 53 EC */	addi r6, r3, sGXState__3CGX@l
/* 80346C90 00343BF0  88 A6 00 4D */	lbz r5, 0x4d(r6)
/* 80346C94 00343BF4  88 06 00 4F */	lbz r0, 0x4f(r6)
/* 80346C98 00343BF8  7C 85 00 D0 */	neg r4, r5
/* 80346C9C 00343BFC  88 66 00 4C */	lbz r3, 0x4c(r6)
/* 80346CA0 00343C00  7C 84 2B 78 */	or r4, r4, r5
/* 80346CA4 00343C04  28 00 00 01 */	cmplwi r0, 1
/* 80346CA8 00343C08  50 83 0F FE */	rlwimi r3, r4, 1, 0x1f, 0x1f
/* 80346CAC 00343C0C  98 E6 00 4E */	stb r7, 0x4e(r6)
/* 80346CB0 00343C10  98 66 00 4C */	stb r3, 0x4c(r6)
/* 80346CB4 00343C14  41 82 00 14 */	beq lbl_80346CC8
/* 80346CB8 00343C18  38 00 00 01 */	li r0, 1
/* 80346CBC 00343C1C  38 60 00 01 */	li r3, 1
/* 80346CC0 00343C20  98 06 00 4F */	stb r0, 0x4f(r6)
/* 80346CC4 00343C24  48 03 15 A1 */	bl GXSetNumTexGens
lbl_80346CC8:
/* 80346CC8 00343C28  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346CCC 00343C2C  38 83 53 EC */	addi r4, r3, sGXState__3CGX@l
/* 80346CD0 00343C30  88 04 00 51 */	lbz r0, 0x51(r4)
/* 80346CD4 00343C34  28 00 00 00 */	cmplwi r0, 0
/* 80346CD8 00343C38  41 82 00 14 */	beq lbl_80346CEC
/* 80346CDC 00343C3C  38 00 00 00 */	li r0, 0
/* 80346CE0 00343C40  38 60 00 00 */	li r3, 0
/* 80346CE4 00343C44  98 04 00 51 */	stb r0, 0x51(r4)
/* 80346CE8 00343C48  48 03 45 D1 */	bl GXSetNumIndStages
lbl_80346CEC:
/* 80346CEC 00343C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80346CF0 00343C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80346CF4 00343C54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80346CF8 00343C58  7C 08 03 A6 */	mtlr r0
/* 80346CFC 00343C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80346D00 00343C60  4E 80 00 20 */	blr

.global EnsureTevsDirect__13CCubeMaterialFv
EnsureTevsDirect__13CCubeMaterialFv:
/* 80346D04 00343C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80346D08 00343C68  7C 08 02 A6 */	mflr r0
/* 80346D0C 00343C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80346D10 00343C70  80 0D 9D 74 */	lwz r0, lbl_805A8934@sda21(r13)
/* 80346D14 00343C74  2C 00 FF FF */	cmpwi r0, -1
/* 80346D18 00343C78  41 82 00 60 */	beq lbl_80346D78
/* 80346D1C 00343C7C  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346D20 00343C80  38 83 53 EC */	addi r4, r3, sGXState__3CGX@l
/* 80346D24 00343C84  88 04 00 51 */	lbz r0, 0x51(r4)
/* 80346D28 00343C88  28 00 00 00 */	cmplwi r0, 0
/* 80346D2C 00343C8C  41 82 00 14 */	beq lbl_80346D40
/* 80346D30 00343C90  38 00 00 00 */	li r0, 0
/* 80346D34 00343C94  38 60 00 00 */	li r3, 0
/* 80346D38 00343C98  98 04 00 51 */	stb r0, 0x51(r4)
/* 80346D3C 00343C9C  48 03 45 7D */	bl GXSetNumIndStages
lbl_80346D40:
/* 80346D40 00343CA0  80 6D 9D 74 */	lwz r3, lbl_805A8934@sda21(r13)
/* 80346D44 00343CA4  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 80346D48 00343CA8  38 04 53 EC */	addi r0, r4, sGXState__3CGX@l
/* 80346D4C 00343CAC  1C 83 00 1C */	mulli r4, r3, 0x1c
/* 80346D50 00343CB0  7C 80 22 14 */	add r4, r0, r4
/* 80346D54 00343CB4  38 84 00 68 */	addi r4, r4, 0x68
/* 80346D58 00343CB8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80346D5C 00343CBC  28 00 00 00 */	cmplwi r0, 0
/* 80346D60 00343CC0  41 82 00 10 */	beq lbl_80346D70
/* 80346D64 00343CC4  38 00 00 00 */	li r0, 0
/* 80346D68 00343CC8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80346D6C 00343CCC  48 03 45 75 */	bl GXSetTevDirect
lbl_80346D70:
/* 80346D70 00343CD0  38 00 FF FF */	li r0, -1
/* 80346D74 00343CD4  90 0D 9D 74 */	stw r0, lbl_805A8934@sda21(r13)
lbl_80346D78:
/* 80346D78 00343CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80346D7C 00343CDC  7C 08 03 A6 */	mtlr r0
/* 80346D80 00343CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80346D84 00343CE4  4E 80 00 20 */	blr

.global HandleReflection__13CCubeMaterialFb11_GXTexMapIDiUiUiUiUiRUiRUi
HandleReflection__13CCubeMaterialFb11_GXTexMapIDiUiUiUiUiRUiRUi:
/* 80346D88 00343CE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80346D8C 00343CEC  7C 08 02 A6 */	mflr r0
/* 80346D90 00343CF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80346D94 00343CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80346D98 00343CF8  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 80346D9C 00343CFC  7C DD 33 78 */	mr r29, r6
/* 80346DA0 00343D00  83 41 00 48 */	lwz r26, 0x48(r1)
/* 80346DA4 00343D04  7C 96 23 78 */	mr r22, r4
/* 80346DA8 00343D08  7C B7 2B 78 */	mr r23, r5
/* 80346DAC 00343D0C  7C FC 3B 78 */	mr r28, r7
/* 80346DB0 00343D10  7D 18 43 78 */	mr r24, r8
/* 80346DB4 00343D14  7D 3B 4B 78 */	mr r27, r9
/* 80346DB8 00343D18  7D 59 53 78 */	mr r25, r10
/* 80346DBC 00343D1C  3B E0 00 00 */	li r31, 0
/* 80346DC0 00343D20  41 82 01 1C */	beq lbl_80346EDC
/* 80346DC4 00343D24  1C 9D 00 1C */	mulli r4, r29, 0x1c
/* 80346DC8 00343D28  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346DCC 00343D2C  3B C0 00 06 */	li r30, 6
/* 80346DD0 00343D30  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 80346DD4 00343D34  7C 60 22 14 */	add r3, r0, r4
/* 80346DD8 00343D38  3B E3 00 68 */	addi r31, r3, 0x68
/* 80346DDC 00343D3C  80 63 00 68 */	lwz r3, 0x68(r3)
/* 80346DE0 00343D40  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 80346DE4 00343D44  28 00 B8 CF */	cmplwi r0, 0xb8cf
/* 80346DE8 00343D48  41 82 00 28 */	beq lbl_80346E10
/* 80346DEC 00343D4C  3C 80 00 08 */	lis r4, 0x0007B8CF@ha
/* 80346DF0 00343D50  7F A3 EB 78 */	mr r3, r29
/* 80346DF4 00343D54  38 04 B8 CF */	addi r0, r4, 0x0007B8CF@l
/* 80346DF8 00343D58  38 80 00 0F */	li r4, 0xf
/* 80346DFC 00343D5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80346E00 00343D60  38 A0 00 06 */	li r5, 6
/* 80346E04 00343D64  38 C0 00 0E */	li r6, 0xe
/* 80346E08 00343D68  38 E0 00 0F */	li r7, 0xf
/* 80346E0C 00343D6C  48 03 46 99 */	bl GXSetTevColorIn
lbl_80346E10:
/* 80346E10 00343D70  80 7F 00 04 */	lwz r3, 4(r31)
/* 80346E14 00343D74  3C 03 FF FF */	addis r0, r3, 0xffff
/* 80346E18 00343D78  28 00 9C E7 */	cmplwi r0, 0x9ce7
/* 80346E1C 00343D7C  41 82 00 28 */	beq lbl_80346E44
/* 80346E20 00343D80  3C 80 00 02 */	lis r4, 0x00019CE7@ha
/* 80346E24 00343D84  7F A3 EB 78 */	mr r3, r29
/* 80346E28 00343D88  38 04 9C E7 */	addi r0, r4, 0x00019CE7@l
/* 80346E2C 00343D8C  38 80 00 07 */	li r4, 7
/* 80346E30 00343D90  90 1F 00 04 */	stw r0, 4(r31)
/* 80346E34 00343D94  38 A0 00 07 */	li r5, 7
/* 80346E38 00343D98  38 C0 00 07 */	li r6, 7
/* 80346E3C 00343D9C  38 E0 00 03 */	li r7, 3
/* 80346E40 00343DA0  48 03 46 A9 */	bl GXSetTevAlphaIn
lbl_80346E44:
/* 80346E44 00343DA4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80346E48 00343DA8  28 00 07 00 */	cmplwi r0, 0x700
/* 80346E4C 00343DAC  41 82 00 28 */	beq lbl_80346E74
/* 80346E50 00343DB0  38 00 07 00 */	li r0, 0x700
/* 80346E54 00343DB4  7F A3 EB 78 */	mr r3, r29
/* 80346E58 00343DB8  90 1F 00 08 */	stw r0, 8(r31)
/* 80346E5C 00343DBC  38 80 00 00 */	li r4, 0
/* 80346E60 00343DC0  38 A0 00 00 */	li r5, 0
/* 80346E64 00343DC4  38 C0 00 00 */	li r6, 0
/* 80346E68 00343DC8  38 E0 00 01 */	li r7, 1
/* 80346E6C 00343DCC  39 00 00 03 */	li r8, 3
/* 80346E70 00343DD0  48 03 46 BD */	bl GXSetTevColorOp
lbl_80346E74:
/* 80346E74 00343DD4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80346E78 00343DD8  28 00 07 00 */	cmplwi r0, 0x700
/* 80346E7C 00343DDC  41 82 00 28 */	beq lbl_80346EA4
/* 80346E80 00343DE0  38 00 07 00 */	li r0, 0x700
/* 80346E84 00343DE4  7F A3 EB 78 */	mr r3, r29
/* 80346E88 00343DE8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80346E8C 00343DEC  38 80 00 00 */	li r4, 0
/* 80346E90 00343DF0  38 A0 00 00 */	li r5, 0
/* 80346E94 00343DF4  38 C0 00 00 */	li r6, 0
/* 80346E98 00343DF8  38 E0 00 01 */	li r7, 1
/* 80346E9C 00343DFC  39 00 00 03 */	li r8, 3
/* 80346EA0 00343E00  48 03 46 F5 */	bl GXSetTevAlphaOp
lbl_80346EA4:
/* 80346EA4 00343E04  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80346EA8 00343E08  3C 03 FF FA */	addis r0, r3, 0xfffa
/* 80346EAC 00343E0C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80346EB0 00343E10  41 82 00 24 */	beq lbl_80346ED4
/* 80346EB4 00343E14  3C 80 00 07 */	lis r4, 0x0006FFFF@ha
/* 80346EB8 00343E18  7F A3 EB 78 */	mr r3, r29
/* 80346EBC 00343E1C  38 04 FF FF */	addi r0, r4, 0x0006FFFF@l
/* 80346EC0 00343E20  38 80 00 FF */	li r4, 0xff
/* 80346EC4 00343E24  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80346EC8 00343E28  38 A0 00 FF */	li r5, 0xff
/* 80346ECC 00343E2C  38 C0 00 06 */	li r6, 6
/* 80346ED0 00343E30  48 03 4B 25 */	bl GXSetTevOrder
lbl_80346ED4:
/* 80346ED4 00343E34  3B E0 00 01 */	li r31, 1
/* 80346ED8 00343E38  48 00 00 08 */	b lbl_80346EE0
lbl_80346EDC:
/* 80346EDC 00343E3C  3B C0 00 0E */	li r30, 0xe
lbl_80346EE0:
/* 80346EE0 00343E40  C0 2D A9 90 */	lfs f1, sReflectionAlpha@sda21(r13)
/* 80346EE4 00343E44  38 80 00 FF */	li r4, 0xff
/* 80346EE8 00343E48  38 00 00 00 */	li r0, 0
/* 80346EEC 00343E4C  98 81 00 0C */	stb r4, 0xc(r1)
/* 80346EF0 00343E50  FC 40 08 90 */	fmr f2, f1
/* 80346EF4 00343E54  38 61 00 0C */	addi r3, r1, 0xc
/* 80346EF8 00343E58  FC 60 08 90 */	fmr f3, f1
/* 80346EFC 00343E5C  98 01 00 0D */	stb r0, 0xd(r1)
/* 80346F00 00343E60  FC 80 08 90 */	fmr f4, f1
/* 80346F04 00343E64  98 81 00 0E */	stb r4, 0xe(r1)
/* 80346F08 00343E68  98 81 00 0F */	stb r4, 0xf(r1)
/* 80346F0C 00343E6C  48 01 C4 91 */	bl Set__6CColorFffff
/* 80346F10 00343E70  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346F14 00343E74  57 64 10 3A */	slwi r4, r27, 2
/* 80346F18 00343E78  38 63 53 EC */	addi r3, r3, sGXState__3CGX@l
/* 80346F1C 00343E7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80346F20 00343E80  7C 63 22 14 */	add r3, r3, r4
/* 80346F24 00343E84  38 83 00 58 */	addi r4, r3, 0x58
/* 80346F28 00343E88  80 63 00 58 */	lwz r3, 0x58(r3)
/* 80346F2C 00343E8C  7C 03 00 40 */	cmplw r3, r0
/* 80346F30 00343E90  41 82 00 18 */	beq lbl_80346F48
/* 80346F34 00343E94  90 04 00 00 */	stw r0, 0(r4)
/* 80346F38 00343E98  7F 63 DB 78 */	mr r3, r27
/* 80346F3C 00343E9C  38 81 00 08 */	addi r4, r1, 8
/* 80346F40 00343EA0  90 01 00 08 */	stw r0, 8(r1)
/* 80346F44 00343EA4  48 03 47 A1 */	bl GXSetTevKColor
lbl_80346F48:
/* 80346F48 00343EA8  1C BD 00 1C */	mulli r5, r29, 0x1c
/* 80346F4C 00343EAC  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346F50 00343EB0  38 9B 00 0C */	addi r4, r27, 0xc
/* 80346F54 00343EB4  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 80346F58 00343EB8  7C 60 2A 14 */	add r3, r0, r5
/* 80346F5C 00343EBC  38 63 00 68 */	addi r3, r3, 0x68
/* 80346F60 00343EC0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80346F64 00343EC4  7C 04 00 00 */	cmpw r4, r0
/* 80346F68 00343EC8  41 82 00 10 */	beq lbl_80346F78
/* 80346F6C 00343ECC  98 83 00 18 */	stb r4, 0x18(r3)
/* 80346F70 00343ED0  7F A3 EB 78 */	mr r3, r29
/* 80346F74 00343ED4  48 03 47 E5 */	bl GXSetTevKColorSel
lbl_80346F78:
/* 80346F78 00343ED8  80 6D A5 F0 */	lwz r3, sRenderer__13CCubeRenderer@sda21(r13)
/* 80346F7C 00343EDC  7F BD FA 14 */	add r29, r29, r31
/* 80346F80 00343EE0  4B F7 55 C1 */	bl GetRealReflection__13CCubeRendererFv
/* 80346F84 00343EE4  7F 84 E3 78 */	mr r4, r28
/* 80346F88 00343EE8  38 A0 00 00 */	li r5, 0
/* 80346F8C 00343EEC  4B FC 87 B1 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 80346F90 00343EF0  2C 16 00 FF */	cmpwi r22, 0xff
/* 80346F94 00343EF4  41 82 00 C8 */	beq lbl_8034705C
/* 80346F98 00343EF8  7F 04 C3 78 */	mr r4, r24
/* 80346F9C 00343EFC  7E C5 B3 78 */	mr r5, r22
/* 80346FA0 00343F00  3B 78 00 01 */	addi r27, r24, 1
/* 80346FA4 00343F04  38 60 00 00 */	li r3, 0
/* 80346FA8 00343F08  48 03 41 FD */	bl GXSetIndTexOrder
/* 80346FAC 00343F0C  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80346FB0 00343F10  57 04 10 3A */	slwi r4, r24, 2
/* 80346FB4 00343F14  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 80346FB8 00343F18  7C 60 22 14 */	add r3, r0, r4
/* 80346FBC 00343F1C  38 A3 02 28 */	addi r5, r3, 0x228
/* 80346FC0 00343F20  80 63 02 28 */	lwz r3, 0x228(r3)
/* 80346FC4 00343F24  3C 03 FF F7 */	addis r0, r3, 0xfff7
/* 80346FC8 00343F28  28 00 4C 00 */	cmplwi r0, 0x4c00
/* 80346FCC 00343F2C  41 82 00 2C */	beq lbl_80346FF8
/* 80346FD0 00343F30  3C 80 00 09 */	lis r4, 0x00094C00@ha
/* 80346FD4 00343F34  7F 03 C3 78 */	mr r3, r24
/* 80346FD8 00343F38  38 04 4C 00 */	addi r0, r4, 0x00094C00@l
/* 80346FDC 00343F3C  38 80 00 00 */	li r4, 0
/* 80346FE0 00343F40  90 05 00 00 */	stw r0, 0(r5)
/* 80346FE4 00343F44  38 A0 00 00 */	li r5, 0
/* 80346FE8 00343F48  38 C0 00 30 */	li r6, 0x30
/* 80346FEC 00343F4C  38 E0 00 01 */	li r7, 1
/* 80346FF0 00343F50  39 00 00 52 */	li r8, 0x52
/* 80346FF4 00343F54  48 03 0F A1 */	bl GXSetTexCoordGen2
lbl_80346FF8:
/* 80346FF8 00343F58  7F A3 EB 78 */	mr r3, r29
/* 80346FFC 00343F5C  38 80 00 00 */	li r4, 0
/* 80347000 00343F60  38 A0 00 01 */	li r5, 1
/* 80347004 00343F64  38 C0 00 00 */	li r6, 0
/* 80347008 00343F68  38 E0 00 01 */	li r7, 1
/* 8034700C 00343F6C  48 00 01 6D */	bl SetTevIndWarp__3CGXF13_GXTevStageID16_GXIndTexStageIDUcUc14_GXIndTexMtxID
/* 80347010 00343F70  7E E4 07 74 */	extsb r4, r23
/* 80347014 00343F74  38 60 00 01 */	li r3, 1
/* 80347018 00343F78  4B FC 0F A1 */	bl SetIndTexMtxSTPointFive__3CGXF14_GXIndTexMtxIDSc
/* 8034701C 00343F7C  80 6D 9D 74 */	lwz r3, lbl_805A8934@sda21(r13)
/* 80347020 00343F80  7C 03 E8 00 */	cmpw r3, r29
/* 80347024 00343F84  40 81 00 30 */	ble lbl_80347054
/* 80347028 00343F88  1C A3 00 1C */	mulli r5, r3, 0x1c
/* 8034702C 00343F8C  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 80347030 00343F90  38 04 53 EC */	addi r0, r4, sGXState__3CGX@l
/* 80347034 00343F94  7C 80 2A 14 */	add r4, r0, r5
/* 80347038 00343F98  38 84 00 68 */	addi r4, r4, 0x68
/* 8034703C 00343F9C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80347040 00343FA0  28 00 00 00 */	cmplwi r0, 0
/* 80347044 00343FA4  41 82 00 10 */	beq lbl_80347054
/* 80347048 00343FA8  38 00 00 00 */	li r0, 0
/* 8034704C 00343FAC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80347050 00343FB0  48 03 42 91 */	bl GXSetTevDirect
lbl_80347054:
/* 80347054 00343FB4  93 AD 9D 74 */	stw r29, lbl_805A8934@sda21(r13)
/* 80347058 00343FB8  48 00 00 08 */	b lbl_80347060
lbl_8034705C:
/* 8034705C 00343FBC  7F 1B C3 78 */	mr r27, r24
lbl_80347060:
/* 80347060 00343FC0  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80347064 00343FC4  57 64 10 3A */	slwi r4, r27, 2
/* 80347068 00343FC8  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 8034706C 00343FCC  7C 60 22 14 */	add r3, r0, r4
/* 80347070 00343FD0  38 A3 02 28 */	addi r5, r3, 0x228
/* 80347074 00343FD4  80 63 02 28 */	lwz r3, 0x228(r3)
/* 80347078 00343FD8  3C 03 FF E2 */	addis r0, r3, 0xffe2
/* 8034707C 00343FDC  28 00 8E 00 */	cmplwi r0, 0x8e00
/* 80347080 00343FE0  41 82 00 2C */	beq lbl_803470AC
/* 80347084 00343FE4  3C 80 00 1F */	lis r4, 0x001E8E00@ha
/* 80347088 00343FE8  7F 63 DB 78 */	mr r3, r27
/* 8034708C 00343FEC  38 04 8E 00 */	addi r0, r4, 0x001E8E00@l
/* 80347090 00343FF0  38 80 00 00 */	li r4, 0
/* 80347094 00343FF4  90 05 00 00 */	stw r0, 0(r5)
/* 80347098 00343FF8  38 A0 00 00 */	li r5, 0
/* 8034709C 00343FFC  38 C0 00 33 */	li r6, 0x33
/* 803470A0 00344000  38 E0 00 00 */	li r7, 0
/* 803470A4 00344004  39 00 00 7D */	li r8, 0x7d
/* 803470A8 00344008  48 03 0E ED */	bl GXSetTexCoordGen2
lbl_803470AC:
/* 803470AC 0034400C  1C 9D 00 1C */	mulli r4, r29, 0x1c
/* 803470B0 00344010  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 803470B4 00344014  57 C5 2D B4 */	rlwinm r5, r30, 5, 0x16, 0x1a
/* 803470B8 00344018  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 803470BC 0034401C  7C 60 22 14 */	add r3, r0, r4
/* 803470C0 00344020  80 03 00 68 */	lwz r0, 0x68(r3)
/* 803470C4 00344024  60 A4 20 0F */	ori r4, r5, 0x200f
/* 803470C8 00344028  3A C3 00 68 */	addi r22, r3, 0x68
/* 803470CC 0034402C  7C 04 00 40 */	cmplw r4, r0
/* 803470D0 00344030  41 82 00 20 */	beq lbl_803470F0
/* 803470D4 00344034  90 96 00 00 */	stw r4, 0(r22)
/* 803470D8 00344038  7F A3 EB 78 */	mr r3, r29
/* 803470DC 0034403C  7F C5 F3 78 */	mr r5, r30
/* 803470E0 00344040  38 80 00 0F */	li r4, 0xf
/* 803470E4 00344044  38 C0 00 08 */	li r6, 8
/* 803470E8 00344048  38 E0 00 00 */	li r7, 0
/* 803470EC 0034404C  48 03 43 B9 */	bl GXSetTevColorIn
lbl_803470F0:
/* 803470F0 00344050  80 16 00 04 */	lwz r0, 4(r22)
/* 803470F4 00344054  28 00 1C E7 */	cmplwi r0, 0x1ce7
/* 803470F8 00344058  41 82 00 24 */	beq lbl_8034711C
/* 803470FC 0034405C  38 00 1C E7 */	li r0, 0x1ce7
/* 80347100 00344060  7F A3 EB 78 */	mr r3, r29
/* 80347104 00344064  90 16 00 04 */	stw r0, 4(r22)
/* 80347108 00344068  38 80 00 07 */	li r4, 7
/* 8034710C 0034406C  38 A0 00 07 */	li r5, 7
/* 80347110 00344070  38 C0 00 07 */	li r6, 7
/* 80347114 00344074  38 E0 00 00 */	li r7, 0
/* 80347118 00344078  48 03 43 D1 */	bl GXSetTevAlphaIn
lbl_8034711C:
/* 8034711C 0034407C  7F A3 EB 78 */	mr r3, r29
/* 80347120 00344080  4B FC 0B 31 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 80347124 00344084  38 60 00 00 */	li r3, 0
/* 80347128 00344088  57 80 44 2E */	rlwinm r0, r28, 8, 0x10, 0x17
/* 8034712C 0034408C  90 7A 00 00 */	stw r3, 0(r26)
/* 80347130 00344090  53 60 06 3E */	rlwimi r0, r27, 0, 0x18, 0x1f
/* 80347134 00344094  90 79 00 00 */	stw r3, 0(r25)
/* 80347138 00344098  64 03 00 FF */	oris r3, r0, 0xff
/* 8034713C 0034409C  80 16 00 14 */	lwz r0, 0x14(r22)
/* 80347140 003440A0  7C 00 18 40 */	cmplw r0, r3
/* 80347144 003440A4  41 82 00 1C */	beq lbl_80347160
/* 80347148 003440A8  90 76 00 14 */	stw r3, 0x14(r22)
/* 8034714C 003440AC  7F A3 EB 78 */	mr r3, r29
/* 80347150 003440B0  7F 64 DB 78 */	mr r4, r27
/* 80347154 003440B4  7F 85 E3 78 */	mr r5, r28
/* 80347158 003440B8  38 C0 00 FF */	li r6, 0xff
/* 8034715C 003440BC  48 03 48 99 */	bl GXSetTevOrder
lbl_80347160:
/* 80347160 003440C0  38 7F 00 01 */	addi r3, r31, 1
/* 80347164 003440C4  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 80347168 003440C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034716C 003440CC  7C 08 03 A6 */	mtlr r0
/* 80347170 003440D0  38 21 00 40 */	addi r1, r1, 0x40
/* 80347174 003440D4  4E 80 00 20 */	blr

.global SetTevIndWarp__3CGXF13_GXTevStageID16_GXIndTexStageIDUcUc14_GXIndTexMtxID
SetTevIndWarp__3CGXF13_GXTevStageID16_GXIndTexStageIDUcUc14_GXIndTexMtxID:
/* 80347178 003440D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034717C 003440DC  7C 08 02 A6 */	mflr r0
/* 80347180 003440E0  39 00 00 00 */	li r8, 0
/* 80347184 003440E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80347188 003440E8  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8034718C 003440EC  41 82 00 08 */	beq lbl_80347194
/* 80347190 003440F0  39 00 00 06 */	li r8, 6
lbl_80347194:
/* 80347194 003440F4  1D 23 00 1C */	mulli r9, r3, 0x1c
/* 80347198 003440F8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8034719C 003440FC  3C C0 80 5A */	lis r6, sGXState__3CGX@ha
/* 803471A0 00344100  38 06 53 EC */	addi r0, r6, sGXState__3CGX@l
/* 803471A4 00344104  7C C0 4A 14 */	add r6, r0, r9
/* 803471A8 00344108  54 89 07 BE */	clrlwi r9, r4, 0x1e
/* 803471AC 0034410C  39 66 00 68 */	addi r11, r6, 0x68
/* 803471B0 00344110  38 00 00 00 */	li r0, 0
/* 803471B4 00344114  41 82 00 08 */	beq lbl_803471BC
/* 803471B8 00344118  38 00 00 07 */	li r0, 7
lbl_803471BC:
/* 803471BC 0034411C  54 00 26 76 */	rlwinm r0, r0, 4, 0x19, 0x1b
/* 803471C0 00344120  54 E6 3D 70 */	rlwinm r6, r7, 7, 0x15, 0x18
/* 803471C4 00344124  7C 00 4B 78 */	or r0, r0, r9
/* 803471C8 00344128  55 09 5C A8 */	rlwinm r9, r8, 0xb, 0x12, 0x14
/* 803471CC 0034412C  7C C0 03 78 */	or r0, r6, r0
/* 803471D0 00344130  55 0A 73 E2 */	rlwinm r10, r8, 0xe, 0xf, 0x11
/* 803471D4 00344134  7D 26 03 78 */	or r6, r9, r0
/* 803471D8 00344138  80 0B 00 10 */	lwz r0, 0x10(r11)
/* 803471DC 0034413C  7D 46 33 78 */	or r6, r10, r6
/* 803471E0 00344140  7C 00 30 40 */	cmplw r0, r6
/* 803471E4 00344144  41 82 00 30 */	beq lbl_80347214
/* 803471E8 00344148  90 CB 00 10 */	stw r6, 0x10(r11)
/* 803471EC 0034414C  38 C0 00 00 */	li r6, 0
/* 803471F0 00344150  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 803471F4 00344154  38 A0 00 00 */	li r5, 0
/* 803471F8 00344158  90 C1 00 08 */	stw r6, 8(r1)
/* 803471FC 0034415C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80347200 00344160  41 82 00 08 */	beq lbl_80347208
/* 80347204 00344164  38 C0 00 07 */	li r6, 7
lbl_80347208:
/* 80347208 00344168  7D 09 43 78 */	mr r9, r8
/* 8034720C 0034416C  39 40 00 00 */	li r10, 0
/* 80347210 00344170  48 03 3C 1D */	bl GXSetTevIndirect
lbl_80347214:
/* 80347214 00344174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80347218 00344178  7C 08 03 A6 */	mtlr r0
/* 8034721C 0034417C  38 21 00 10 */	addi r1, r1, 0x10
/* 80347220 00344180  4E 80 00 20 */	blr

.global DoModelShadow__FUiUi
DoModelShadow__FUiUi:
/* 80347224 00344184  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80347228 00344188  7C 08 02 A6 */	mflr r0
/* 8034722C 0034418C  38 A0 00 01 */	li r5, 1
/* 80347230 00344190  90 01 00 64 */	stw r0, 0x64(r1)
/* 80347234 00344194  7C 60 1B 78 */	mr r0, r3
/* 80347238 00344198  BF 01 00 40 */	stmw r24, 0x40(r1)
/* 8034723C 0034419C  7C 9E 23 78 */	mr r30, r4
/* 80347240 003441A0  7C 1D 03 78 */	mr r29, r0
/* 80347244 003441A4  7C 04 03 78 */	mr r4, r0
/* 80347248 003441A8  80 6D A9 9C */	lwz r3, spShadowTexture@sda21(r13)
/* 8034724C 003441AC  4B FC 84 F1 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 80347250 003441B0  3C 60 80 3E */	lis r3, lbl_803D8048@ha
/* 80347254 003441B4  3C 80 80 4C */	lis r4, sTextureProjectionTransform@ha
/* 80347258 003441B8  3B 03 80 48 */	addi r24, r3, lbl_803D8048@l
/* 8034725C 003441BC  38 61 00 08 */	addi r3, r1, 8
/* 80347260 003441C0  83 38 00 00 */	lwz r25, 0(r24)
/* 80347264 003441C4  38 C4 FF 5C */	addi r6, r4, sTextureProjectionTransform@l
/* 80347268 003441C8  83 58 00 04 */	lwz r26, 4(r24)
/* 8034726C 003441CC  38 80 00 2D */	li r4, 0x2d
/* 80347270 003441D0  83 78 00 08 */	lwz r27, 8(r24)
/* 80347274 003441D4  38 A0 00 00 */	li r5, 0
/* 80347278 003441D8  83 98 00 0C */	lwz r28, 0xc(r24)
/* 8034727C 003441DC  83 F8 00 10 */	lwz r31, 0x10(r24)
/* 80347280 003441E0  81 98 00 14 */	lwz r12, 0x14(r24)
/* 80347284 003441E4  81 78 00 18 */	lwz r11, 0x18(r24)
/* 80347288 003441E8  81 58 00 1C */	lwz r10, 0x1c(r24)
/* 8034728C 003441EC  81 38 00 20 */	lwz r9, 0x20(r24)
/* 80347290 003441F0  81 18 00 24 */	lwz r8, 0x24(r24)
/* 80347294 003441F4  80 F8 00 28 */	lwz r7, 0x28(r24)
/* 80347298 003441F8  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 8034729C 003441FC  93 21 00 08 */	stw r25, 8(r1)
/* 803472A0 00344200  C0 E6 00 00 */	lfs f7, 0(r6)
/* 803472A4 00344204  93 41 00 0C */	stw r26, 0xc(r1)
/* 803472A8 00344208  C0 C6 00 04 */	lfs f6, 4(r6)
/* 803472AC 0034420C  93 61 00 10 */	stw r27, 0x10(r1)
/* 803472B0 00344210  C0 A6 00 08 */	lfs f5, 8(r6)
/* 803472B4 00344214  93 81 00 14 */	stw r28, 0x14(r1)
/* 803472B8 00344218  C0 86 00 0C */	lfs f4, 0xc(r6)
/* 803472BC 0034421C  93 E1 00 18 */	stw r31, 0x18(r1)
/* 803472C0 00344220  C0 66 00 20 */	lfs f3, 0x20(r6)
/* 803472C4 00344224  91 81 00 1C */	stw r12, 0x1c(r1)
/* 803472C8 00344228  C0 46 00 24 */	lfs f2, 0x24(r6)
/* 803472CC 0034422C  91 61 00 20 */	stw r11, 0x20(r1)
/* 803472D0 00344230  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 803472D4 00344234  91 41 00 24 */	stw r10, 0x24(r1)
/* 803472D8 00344238  C0 06 00 2C */	lfs f0, 0x2c(r6)
/* 803472DC 0034423C  91 21 00 28 */	stw r9, 0x28(r1)
/* 803472E0 00344240  91 01 00 2C */	stw r8, 0x2c(r1)
/* 803472E4 00344244  90 E1 00 30 */	stw r7, 0x30(r1)
/* 803472E8 00344248  90 01 00 34 */	stw r0, 0x34(r1)
/* 803472EC 0034424C  D0 E1 00 08 */	stfs f7, 8(r1)
/* 803472F0 00344250  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 803472F4 00344254  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 803472F8 00344258  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 803472FC 0034425C  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80347300 00344260  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80347304 00344264  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80347308 00344268  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8034730C 0034426C  48 03 51 85 */	bl GXLoadTexMtxImm
/* 80347310 00344270  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80347314 00344274  57 C4 10 3A */	slwi r4, r30, 2
/* 80347318 00344278  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 8034731C 0034427C  7C 60 22 14 */	add r3, r0, r4
/* 80347320 00344280  38 A3 02 28 */	addi r5, r3, 0x228
/* 80347324 00344284  80 63 02 28 */	lwz r3, 0x228(r3)
/* 80347328 00344288  3C 03 FF E2 */	addis r0, r3, 0xffe2
/* 8034732C 0034428C  28 00 8A 00 */	cmplwi r0, 0x8a00
/* 80347330 00344290  41 82 00 2C */	beq lbl_8034735C
/* 80347334 00344294  3C 80 00 1F */	lis r4, 0x001E8A00@ha
/* 80347338 00344298  7F C3 F3 78 */	mr r3, r30
/* 8034733C 0034429C  38 04 8A 00 */	addi r0, r4, 0x001E8A00@l
/* 80347340 003442A0  38 80 00 00 */	li r4, 0
/* 80347344 003442A4  90 05 00 00 */	stw r0, 0(r5)
/* 80347348 003442A8  38 A0 00 00 */	li r5, 0
/* 8034734C 003442AC  38 C0 00 2D */	li r6, 0x2d
/* 80347350 003442B0  38 E0 00 00 */	li r7, 0
/* 80347354 003442B4  39 00 00 7D */	li r8, 0x7d
/* 80347358 003442B8  48 03 0C 3D */	bl GXSetTexCoordGen2
lbl_8034735C:
/* 8034735C 003442BC  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80347360 003442C0  3B E3 53 EC */	addi r31, r3, sGXState__3CGX@l
/* 80347364 003442C4  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80347368 003442C8  28 00 03 00 */	cmplwi r0, 0x300
/* 8034736C 003442CC  41 82 00 28 */	beq lbl_80347394
/* 80347370 003442D0  38 00 03 00 */	li r0, 0x300
/* 80347374 003442D4  38 60 00 00 */	li r3, 0
/* 80347378 003442D8  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8034737C 003442DC  38 80 00 00 */	li r4, 0
/* 80347380 003442E0  38 A0 00 00 */	li r5, 0
/* 80347384 003442E4  38 C0 00 00 */	li r6, 0
/* 80347388 003442E8  38 E0 00 01 */	li r7, 1
/* 8034738C 003442EC  39 00 00 01 */	li r8, 1
/* 80347390 003442F0  48 03 41 9D */	bl GXSetTevColorOp
lbl_80347394:
/* 80347394 003442F4  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80347398 003442F8  28 00 03 00 */	cmplwi r0, 0x300
/* 8034739C 003442FC  41 82 00 28 */	beq lbl_803473C4
/* 803473A0 00344300  38 00 03 00 */	li r0, 0x300
/* 803473A4 00344304  38 60 00 00 */	li r3, 0
/* 803473A8 00344308  90 1F 00 74 */	stw r0, 0x74(r31)
/* 803473AC 0034430C  38 80 00 00 */	li r4, 0
/* 803473B0 00344310  38 A0 00 00 */	li r5, 0
/* 803473B4 00344314  38 C0 00 00 */	li r6, 0
/* 803473B8 00344318  38 E0 00 01 */	li r7, 1
/* 803473BC 0034431C  39 00 00 01 */	li r8, 1
/* 803473C0 00344320  48 03 41 D5 */	bl GXSetTevAlphaOp
lbl_803473C4:
/* 803473C4 00344324  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 803473C8 00344328  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 803473CC 0034432C  28 00 A1 4F */	cmplwi r0, 0xa14f
/* 803473D0 00344330  41 82 00 28 */	beq lbl_803473F8
/* 803473D4 00344334  3C 80 00 08 */	lis r4, 0x0007A14F@ha
/* 803473D8 00344338  38 60 00 00 */	li r3, 0
/* 803473DC 0034433C  38 04 A1 4F */	addi r0, r4, 0x0007A14F@l
/* 803473E0 00344340  38 80 00 0F */	li r4, 0xf
/* 803473E4 00344344  90 1F 00 68 */	stw r0, 0x68(r31)
/* 803473E8 00344348  38 A0 00 0A */	li r5, 0xa
/* 803473EC 0034434C  38 C0 00 08 */	li r6, 8
/* 803473F0 00344350  38 E0 00 0F */	li r7, 0xf
/* 803473F4 00344354  48 03 40 B1 */	bl GXSetTevColorIn
lbl_803473F8:
/* 803473F8 00344358  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 803473FC 0034435C  3C 03 FF FE */	addis r0, r3, 0xfffe
/* 80347400 00344360  28 00 9C E7 */	cmplwi r0, 0x9ce7
/* 80347404 00344364  41 82 00 28 */	beq lbl_8034742C
/* 80347408 00344368  3C 80 00 03 */	lis r4, 0x00029CE7@ha
/* 8034740C 0034436C  38 60 00 00 */	li r3, 0
/* 80347410 00344370  38 04 9C E7 */	addi r0, r4, 0x00029CE7@l
/* 80347414 00344374  38 80 00 07 */	li r4, 7
/* 80347418 00344378  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 8034741C 0034437C  38 A0 00 07 */	li r5, 7
/* 80347420 00344380  38 C0 00 07 */	li r6, 7
/* 80347424 00344384  38 E0 00 05 */	li r7, 5
/* 80347428 00344388  48 03 40 C1 */	bl GXSetTevAlphaIn
lbl_8034742C:
/* 8034742C 0034438C  57 A3 44 2E */	rlwinm r3, r29, 8, 0x10, 0x17
/* 80347430 00344390  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 80347434 00344394  53 C3 06 3E */	rlwimi r3, r30, 0, 0x18, 0x1f
/* 80347438 00344398  64 63 00 05 */	oris r3, r3, 5
/* 8034743C 0034439C  7C 00 18 40 */	cmplw r0, r3
/* 80347440 003443A0  41 82 00 1C */	beq lbl_8034745C
/* 80347444 003443A4  90 7F 00 7C */	stw r3, 0x7c(r31)
/* 80347448 003443A8  7F C4 F3 78 */	mr r4, r30
/* 8034744C 003443AC  7F A5 EB 78 */	mr r5, r29
/* 80347450 003443B0  38 60 00 00 */	li r3, 0
/* 80347454 003443B4  38 C0 00 05 */	li r6, 5
/* 80347458 003443B8  48 03 45 9D */	bl GXSetTevOrder
lbl_8034745C:
/* 8034745C 003443BC  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80347460 003443C0  3B A3 53 EC */	addi r29, r3, sGXState__3CGX@l
/* 80347464 003443C4  80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 80347468 003443C8  28 00 03 00 */	cmplwi r0, 0x300
/* 8034746C 003443CC  41 82 00 28 */	beq lbl_80347494
/* 80347470 003443D0  38 00 03 00 */	li r0, 0x300
/* 80347474 003443D4  38 60 00 01 */	li r3, 1
/* 80347478 003443D8  90 1D 00 8C */	stw r0, 0x8c(r29)
/* 8034747C 003443DC  38 80 00 00 */	li r4, 0
/* 80347480 003443E0  38 A0 00 00 */	li r5, 0
/* 80347484 003443E4  38 C0 00 00 */	li r6, 0
/* 80347488 003443E8  38 E0 00 01 */	li r7, 1
/* 8034748C 003443EC  39 00 00 01 */	li r8, 1
/* 80347490 003443F0  48 03 40 9D */	bl GXSetTevColorOp
lbl_80347494:
/* 80347494 003443F4  80 1D 00 90 */	lwz r0, 0x90(r29)
/* 80347498 003443F8  28 00 03 00 */	cmplwi r0, 0x300
/* 8034749C 003443FC  41 82 00 28 */	beq lbl_803474C4
/* 803474A0 00344400  38 00 03 00 */	li r0, 0x300
/* 803474A4 00344404  38 60 00 01 */	li r3, 1
/* 803474A8 00344408  90 1D 00 90 */	stw r0, 0x90(r29)
/* 803474AC 0034440C  38 80 00 00 */	li r4, 0
/* 803474B0 00344410  38 A0 00 00 */	li r5, 0
/* 803474B4 00344414  38 C0 00 00 */	li r6, 0
/* 803474B8 00344418  38 E0 00 01 */	li r7, 1
/* 803474BC 0034441C  39 00 00 01 */	li r8, 1
/* 803474C0 00344420  48 03 40 D5 */	bl GXSetTevAlphaOp
lbl_803474C4:
/* 803474C4 00344424  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 803474C8 00344428  3C 03 FF FF */	addis r0, r3, 0xffff
/* 803474CC 0034442C  28 00 31 4F */	cmplwi r0, 0x314f
/* 803474D0 00344430  41 82 00 28 */	beq lbl_803474F8
/* 803474D4 00344434  3C 80 00 01 */	lis r4, 0x0001314F@ha
/* 803474D8 00344438  38 60 00 01 */	li r3, 1
/* 803474DC 0034443C  38 04 31 4F */	addi r0, r4, 0x0001314F@l
/* 803474E0 00344440  38 80 00 0F */	li r4, 0xf
/* 803474E4 00344444  90 1D 00 84 */	stw r0, 0x84(r29)
/* 803474E8 00344448  38 A0 00 0A */	li r5, 0xa
/* 803474EC 0034444C  38 C0 00 0C */	li r6, 0xc
/* 803474F0 00344450  38 E0 00 02 */	li r7, 2
/* 803474F4 00344454  48 03 3F B1 */	bl GXSetTevColorIn
lbl_803474F8:
/* 803474F8 00344458  80 1D 00 88 */	lwz r0, 0x88(r29)
/* 803474FC 0034445C  28 00 98 A7 */	cmplwi r0, 0x98a7
/* 80347500 00344460  41 82 00 28 */	beq lbl_80347528
/* 80347504 00344464  3C 80 00 01 */	lis r4, 0x000098A7@ha
/* 80347508 00344468  38 60 00 01 */	li r3, 1
/* 8034750C 0034446C  38 04 98 A7 */	addi r0, r4, 0x000098A7@l
/* 80347510 00344470  38 80 00 07 */	li r4, 7
/* 80347514 00344474  90 1D 00 88 */	stw r0, 0x88(r29)
/* 80347518 00344478  38 A0 00 05 */	li r5, 5
/* 8034751C 0034447C  38 C0 00 06 */	li r6, 6
/* 80347520 00344480  38 E0 00 01 */	li r7, 1
/* 80347524 00344484  48 03 3F C5 */	bl GXSetTevAlphaIn
lbl_80347528:
/* 80347528 00344488  88 1D 00 9D */	lbz r0, 0x9d(r29)
/* 8034752C 0034448C  2C 00 00 00 */	cmpwi r0, 0
/* 80347530 00344490  41 82 00 18 */	beq lbl_80347548
/* 80347534 00344494  38 00 00 00 */	li r0, 0
/* 80347538 00344498  38 60 00 01 */	li r3, 1
/* 8034753C 0034449C  98 1D 00 9D */	stb r0, 0x9d(r29)
/* 80347540 003444A0  38 80 00 00 */	li r4, 0
/* 80347544 003444A4  48 03 42 81 */	bl GXSetTevKAlphaSel
lbl_80347548:
/* 80347548 003444A8  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 8034754C 003444AC  3C 03 FF FC */	addis r0, r3, 0xfffc
/* 80347550 003444B0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80347554 003444B4  41 82 00 24 */	beq lbl_80347578
/* 80347558 003444B8  3C 80 00 05 */	lis r4, 0x0004FFFF@ha
/* 8034755C 003444BC  38 60 00 01 */	li r3, 1
/* 80347560 003444C0  38 04 FF FF */	addi r0, r4, 0x0004FFFF@l
/* 80347564 003444C4  38 80 00 FF */	li r4, 0xff
/* 80347568 003444C8  90 1D 00 98 */	stw r0, 0x98(r29)
/* 8034756C 003444CC  38 A0 00 FF */	li r5, 0xff
/* 80347570 003444D0  38 C0 00 04 */	li r6, 4
/* 80347574 003444D4  48 03 44 81 */	bl GXSetTevOrder
lbl_80347578:
/* 80347578 003444D8  BB 01 00 40 */	lmw r24, 0x40(r1)
/* 8034757C 003444DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80347580 003444E0  7C 08 03 A6 */	mtlr r0
/* 80347584 003444E4  38 21 00 60 */	addi r1, r1, 0x60
/* 80347588 003444E8  4E 80 00 20 */	blr

.global HandleTransparency__FUiUiRC11CModelFlagsRUiRUi
HandleTransparency__FUiUiRC11CModelFlagsRUiRUi:
/* 8034758C 003444EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80347590 003444F0  7C 08 02 A6 */	mflr r0
/* 80347594 003444F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80347598 003444F8  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 8034759C 003444FC  7C B9 2B 78 */	mr r25, r5
/* 803475A0 00344500  7C 7E 1B 78 */	mr r30, r3
/* 803475A4 00344504  7C 9F 23 78 */	mr r31, r4
/* 803475A8 00344508  7C FD 3B 78 */	mr r29, r7
/* 803475AC 0034450C  7D 1B 43 78 */	mr r27, r8
/* 803475B0 00344510  88 05 00 00 */	lbz r0, 0(r5)
/* 803475B4 00344514  7C 00 07 74 */	extsb r0, r0
/* 803475B8 00344518  2C 00 00 02 */	cmpwi r0, 2
/* 803475BC 0034451C  40 82 00 10 */	bne lbl_803475CC
/* 803475C0 00344520  54 C3 84 3E */	srwi r3, r6, 0x10
/* 803475C4 00344524  2C 03 00 01 */	cmpwi r3, 1
/* 803475C8 00344528  41 82 04 10 */	beq lbl_803479D8
lbl_803475CC:
/* 803475CC 0034452C  2C 00 00 03 */	cmpwi r0, 3
/* 803475D0 00344530  40 82 02 84 */	bne lbl_80347854
/* 803475D4 00344534  80 7E 00 00 */	lwz r3, 0(r30)
/* 803475D8 00344538  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 803475DC 0034453C  38 04 53 EC */	addi r0, r4, sGXState__3CGX@l
/* 803475E0 00344540  1C 83 00 1C */	mulli r4, r3, 0x1c
/* 803475E4 00344544  7C 7B 1B 78 */	mr r27, r3
/* 803475E8 00344548  3B 43 00 01 */	addi r26, r3, 1
/* 803475EC 0034454C  7C 80 22 14 */	add r4, r0, r4
/* 803475F0 00344550  3B A4 00 68 */	addi r29, r4, 0x68
/* 803475F4 00344554  80 84 00 68 */	lwz r4, 0x68(r4)
/* 803475F8 00344558  3C 04 FF F9 */	addis r0, r4, 0xfff9
/* 803475FC 0034455C  28 00 3D EF */	cmplwi r0, 0x3def
/* 80347600 00344560  41 82 00 24 */	beq lbl_80347624
/* 80347604 00344564  3C 80 00 07 */	lis r4, 0x00073DEF@ha
/* 80347608 00344568  38 A0 00 0F */	li r5, 0xf
/* 8034760C 0034456C  38 04 3D EF */	addi r0, r4, 0x00073DEF@l
/* 80347610 00344570  38 C0 00 0F */	li r6, 0xf
/* 80347614 00344574  90 1D 00 00 */	stw r0, 0(r29)
/* 80347618 00344578  38 80 00 0F */	li r4, 0xf
/* 8034761C 0034457C  38 E0 00 0E */	li r7, 0xe
/* 80347620 00344580  48 03 3E 85 */	bl GXSetTevColorIn
lbl_80347624:
/* 80347624 00344584  80 1D 00 04 */	lwz r0, 4(r29)
/* 80347628 00344588  28 00 1C E7 */	cmplwi r0, 0x1ce7
/* 8034762C 0034458C  41 82 00 24 */	beq lbl_80347650
/* 80347630 00344590  38 00 1C E7 */	li r0, 0x1ce7
/* 80347634 00344594  7F 63 DB 78 */	mr r3, r27
/* 80347638 00344598  90 1D 00 04 */	stw r0, 4(r29)
/* 8034763C 0034459C  38 80 00 07 */	li r4, 7
/* 80347640 003445A0  38 A0 00 07 */	li r5, 7
/* 80347644 003445A4  38 C0 00 07 */	li r6, 7
/* 80347648 003445A8  38 E0 00 00 */	li r7, 0
/* 8034764C 003445AC  48 03 3E 9D */	bl GXSetTevAlphaIn
lbl_80347650:
/* 80347650 003445B0  80 1D 00 08 */	lwz r0, 8(r29)
/* 80347654 003445B4  28 00 03 00 */	cmplwi r0, 0x300
/* 80347658 003445B8  41 82 00 28 */	beq lbl_80347680
/* 8034765C 003445BC  38 00 03 00 */	li r0, 0x300
/* 80347660 003445C0  7F 63 DB 78 */	mr r3, r27
/* 80347664 003445C4  90 1D 00 08 */	stw r0, 8(r29)
/* 80347668 003445C8  38 80 00 00 */	li r4, 0
/* 8034766C 003445CC  38 A0 00 00 */	li r5, 0
/* 80347670 003445D0  38 C0 00 00 */	li r6, 0
/* 80347674 003445D4  38 E0 00 01 */	li r7, 1
/* 80347678 003445D8  39 00 00 01 */	li r8, 1
/* 8034767C 003445DC  48 03 3E B1 */	bl GXSetTevColorOp
lbl_80347680:
/* 80347680 003445E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80347684 003445E4  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 80347688 003445E8  38 83 00 1C */	addi r4, r3, 0x1c
/* 8034768C 003445EC  7C 04 00 00 */	cmpw r4, r0
/* 80347690 003445F0  41 82 00 10 */	beq lbl_803476A0
/* 80347694 003445F4  98 9D 00 18 */	stb r4, 0x18(r29)
/* 80347698 003445F8  7F 63 DB 78 */	mr r3, r27
/* 8034769C 003445FC  48 03 40 BD */	bl GXSetTevKColorSel
lbl_803476A0:
/* 803476A0 00344600  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803476A4 00344604  28 00 01 00 */	cmplwi r0, 0x100
/* 803476A8 00344608  41 82 00 28 */	beq lbl_803476D0
/* 803476AC 0034460C  38 00 01 00 */	li r0, 0x100
/* 803476B0 00344610  7F 63 DB 78 */	mr r3, r27
/* 803476B4 00344614  90 1D 00 0C */	stw r0, 0xc(r29)
/* 803476B8 00344618  38 80 00 00 */	li r4, 0
/* 803476BC 0034461C  38 A0 00 00 */	li r5, 0
/* 803476C0 00344620  38 C0 00 00 */	li r6, 0
/* 803476C4 00344624  38 E0 00 01 */	li r7, 1
/* 803476C8 00344628  39 00 00 00 */	li r8, 0
/* 803476CC 0034462C  48 03 3E C9 */	bl GXSetTevAlphaOp
lbl_803476D0:
/* 803476D0 00344630  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 803476D4 00344634  3C 03 FF 01 */	addis r0, r3, 0xff01
/* 803476D8 00344638  28 00 FF FF */	cmplwi r0, 0xffff
/* 803476DC 0034463C  41 82 00 24 */	beq lbl_80347700
/* 803476E0 00344640  3C 80 01 00 */	lis r4, 0x00FFFFFF@ha
/* 803476E4 00344644  7F 63 DB 78 */	mr r3, r27
/* 803476E8 00344648  38 04 FF FF */	addi r0, r4, 0x00FFFFFF@l
/* 803476EC 0034464C  38 80 00 FF */	li r4, 0xff
/* 803476F0 00344650  90 1D 00 14 */	stw r0, 0x14(r29)
/* 803476F4 00344654  38 A0 00 FF */	li r5, 0xff
/* 803476F8 00344658  38 C0 00 FF */	li r6, 0xff
/* 803476FC 0034465C  48 03 42 F9 */	bl GXSetTevOrder
lbl_80347700:
/* 80347700 00344660  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80347704 00344664  28 00 00 00 */	cmplwi r0, 0
/* 80347708 00344668  41 82 00 14 */	beq lbl_8034771C
/* 8034770C 0034466C  38 00 00 00 */	li r0, 0
/* 80347710 00344670  7F 63 DB 78 */	mr r3, r27
/* 80347714 00344674  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80347718 00344678  48 03 3B C9 */	bl GXSetTevDirect
lbl_8034771C:
/* 8034771C 0034467C  1C 9A 00 1C */	mulli r4, r26, 0x1c
/* 80347720 00344680  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80347724 00344684  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 80347728 00344688  7C 60 22 14 */	add r3, r0, r4
/* 8034772C 0034468C  3B 83 00 68 */	addi r28, r3, 0x68
/* 80347730 00344690  80 63 00 68 */	lwz r3, 0x68(r3)
/* 80347734 00344694  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 80347738 00344698  28 00 B8 40 */	cmplwi r0, 0xb840
/* 8034773C 0034469C  41 82 00 28 */	beq lbl_80347764
/* 80347740 003446A0  3C 80 00 08 */	lis r4, 0x0007B840@ha
/* 80347744 003446A4  7F 43 D3 78 */	mr r3, r26
/* 80347748 003446A8  38 04 B8 40 */	addi r0, r4, 0x0007B840@l
/* 8034774C 003446AC  38 80 00 00 */	li r4, 0
/* 80347750 003446B0  90 1C 00 00 */	stw r0, 0(r28)
/* 80347754 003446B4  38 A0 00 02 */	li r5, 2
/* 80347758 003446B8  38 C0 00 0E */	li r6, 0xe
/* 8034775C 003446BC  38 E0 00 0F */	li r7, 0xf
/* 80347760 003446C0  48 03 3D 45 */	bl GXSetTevColorIn
lbl_80347764:
/* 80347764 003446C4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80347768 003446C8  28 00 1C E7 */	cmplwi r0, 0x1ce7
/* 8034776C 003446CC  41 82 00 24 */	beq lbl_80347790
/* 80347770 003446D0  38 00 1C E7 */	li r0, 0x1ce7
/* 80347774 003446D4  7F 43 D3 78 */	mr r3, r26
/* 80347778 003446D8  90 1C 00 04 */	stw r0, 4(r28)
/* 8034777C 003446DC  38 80 00 07 */	li r4, 7
/* 80347780 003446E0  38 A0 00 07 */	li r5, 7
/* 80347784 003446E4  38 C0 00 07 */	li r6, 7
/* 80347788 003446E8  38 E0 00 00 */	li r7, 0
/* 8034778C 003446EC  48 03 3D 5D */	bl GXSetTevAlphaIn
lbl_80347790:
/* 80347790 003446F0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80347794 003446F4  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 80347798 003446F8  38 83 00 0C */	addi r4, r3, 0xc
/* 8034779C 003446FC  7C 04 00 00 */	cmpw r4, r0
/* 803477A0 00344700  41 82 00 10 */	beq lbl_803477B0
/* 803477A4 00344704  98 9D 00 18 */	stb r4, 0x18(r29)
/* 803477A8 00344708  7F 63 DB 78 */	mr r3, r27
/* 803477AC 0034470C  48 03 3F AD */	bl GXSetTevKColorSel
lbl_803477B0:
/* 803477B0 00344710  7F 43 D3 78 */	mr r3, r26
/* 803477B4 00344714  4B FC 04 9D */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 803477B8 00344718  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 803477BC 0034471C  28 00 00 00 */	cmplwi r0, 0
/* 803477C0 00344720  41 82 00 14 */	beq lbl_803477D4
/* 803477C4 00344724  38 00 00 00 */	li r0, 0
/* 803477C8 00344728  7F 43 D3 78 */	mr r3, r26
/* 803477CC 0034472C  90 1C 00 10 */	stw r0, 0x10(r28)
/* 803477D0 00344730  48 03 3B 11 */	bl GXSetTevDirect
lbl_803477D4:
/* 803477D4 00344734  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 803477D8 00344738  3C 03 FF 01 */	addis r0, r3, 0xff01
/* 803477DC 0034473C  28 00 FF FF */	cmplwi r0, 0xffff
/* 803477E0 00344740  41 82 00 24 */	beq lbl_80347804
/* 803477E4 00344744  3C 80 01 00 */	lis r4, 0x00FFFFFF@ha
/* 803477E8 00344748  7F 43 D3 78 */	mr r3, r26
/* 803477EC 0034474C  38 04 FF FF */	addi r0, r4, 0x00FFFFFF@l
/* 803477F0 00344750  38 80 00 FF */	li r4, 0xff
/* 803477F4 00344754  90 1C 00 14 */	stw r0, 0x14(r28)
/* 803477F8 00344758  38 A0 00 FF */	li r5, 0xff
/* 803477FC 0034475C  38 C0 00 FF */	li r6, 0xff
/* 80347800 00344760  48 03 41 F5 */	bl GXSetTevOrder
lbl_80347804:
/* 80347804 00344764  80 7F 00 00 */	lwz r3, 0(r31)
/* 80347808 00344768  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 8034780C 0034476C  38 04 53 EC */	addi r0, r4, sGXState__3CGX@l
/* 80347810 00344770  80 B9 00 04 */	lwz r5, 4(r25)
/* 80347814 00344774  54 64 10 3A */	slwi r4, r3, 2
/* 80347818 00344778  7C 80 22 14 */	add r4, r0, r4
/* 8034781C 0034477C  84 04 00 58 */	lwzu r0, 0x58(r4)
/* 80347820 00344780  7C 00 28 40 */	cmplw r0, r5
/* 80347824 00344784  41 82 00 14 */	beq lbl_80347838
/* 80347828 00344788  90 A4 00 00 */	stw r5, 0(r4)
/* 8034782C 0034478C  38 81 00 0C */	addi r4, r1, 0xc
/* 80347830 00344790  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80347834 00344794  48 03 3E B1 */	bl GXSetTevKColor
lbl_80347838:
/* 80347838 00344798  80 7F 00 00 */	lwz r3, 0(r31)
/* 8034783C 0034479C  38 03 00 01 */	addi r0, r3, 1
/* 80347840 003447A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80347844 003447A4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80347848 003447A8  38 03 00 02 */	addi r0, r3, 2
/* 8034784C 003447AC  90 1E 00 00 */	stw r0, 0(r30)
/* 80347850 003447B0  48 00 01 88 */	b lbl_803479D8
lbl_80347854:
/* 80347854 003447B4  2C 00 00 08 */	cmpwi r0, 8
/* 80347858 003447B8  3C 60 00 04 */	lis r3, 0x000380C7@ha
/* 8034785C 003447BC  3B 03 80 C7 */	addi r24, r3, 0x000380C7@l
/* 80347860 003447C0  40 82 00 0C */	bne lbl_8034786C
/* 80347864 003447C4  3C 60 00 03 */	lis r3, 0x00031CE7@ha
/* 80347868 003447C8  3B 03 1C E7 */	addi r24, r3, 0x00031CE7@l
lbl_8034786C:
/* 8034786C 003447CC  2C 00 00 02 */	cmpwi r0, 2
/* 80347870 003447D0  3C 60 00 08 */	lis r3, 0x000781CF@ha
/* 80347874 003447D4  38 E3 81 CF */	addi r7, r3, 0x000781CF@l
/* 80347878 003447D8  40 82 00 0C */	bne lbl_80347884
/* 8034787C 003447DC  3C 60 00 07 */	lis r3, 0x0007018F@ha
/* 80347880 003447E0  38 E3 01 8F */	addi r7, r3, 0x0007018F@l
lbl_80347884:
/* 80347884 003447E4  83 5E 00 00 */	lwz r26, 0(r30)
/* 80347888 003447E8  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 8034788C 003447EC  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 80347890 003447F0  1C 7A 00 1C */	mulli r3, r26, 0x1c
/* 80347894 003447F4  7C 60 1A 14 */	add r3, r0, r3
/* 80347898 003447F8  3B 83 00 68 */	addi r28, r3, 0x68
/* 8034789C 003447FC  80 03 00 68 */	lwz r0, 0x68(r3)
/* 803478A0 00344800  7C 07 00 40 */	cmplw r7, r0
/* 803478A4 00344804  41 82 00 20 */	beq lbl_803478C4
/* 803478A8 00344808  90 FC 00 00 */	stw r7, 0(r28)
/* 803478AC 0034480C  7F 43 D3 78 */	mr r3, r26
/* 803478B0 00344810  54 E4 06 FE */	clrlwi r4, r7, 0x1b
/* 803478B4 00344814  54 E5 DE FE */	rlwinm r5, r7, 0x1b, 0x1b, 0x1f
/* 803478B8 00344818  54 E6 B6 FE */	rlwinm r6, r7, 0x16, 0x1b, 0x1f
/* 803478BC 0034481C  54 E7 8E FE */	rlwinm r7, r7, 0x11, 0x1b, 0x1f
/* 803478C0 00344820  48 03 3B E5 */	bl GXSetTevColorIn
lbl_803478C4:
/* 803478C4 00344824  80 1C 00 04 */	lwz r0, 4(r28)
/* 803478C8 00344828  7C 18 00 40 */	cmplw r24, r0
/* 803478CC 0034482C  41 82 00 20 */	beq lbl_803478EC
/* 803478D0 00344830  93 1C 00 04 */	stw r24, 4(r28)
/* 803478D4 00344834  7F 43 D3 78 */	mr r3, r26
/* 803478D8 00344838  57 04 06 FE */	clrlwi r4, r24, 0x1b
/* 803478DC 0034483C  57 05 DE FE */	rlwinm r5, r24, 0x1b, 0x1b, 0x1f
/* 803478E0 00344840  57 06 B6 FE */	rlwinm r6, r24, 0x16, 0x1b, 0x1f
/* 803478E4 00344844  57 07 8E FE */	rlwinm r7, r24, 0x11, 0x1b, 0x1f
/* 803478E8 00344848  48 03 3C 01 */	bl GXSetTevAlphaIn
lbl_803478EC:
/* 803478EC 0034484C  7F 43 D3 78 */	mr r3, r26
/* 803478F0 00344850  4B FC 03 61 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 803478F4 00344854  38 00 01 00 */	li r0, 0x100
/* 803478F8 00344858  90 1D 00 00 */	stw r0, 0(r29)
/* 803478FC 0034485C  90 1B 00 00 */	stw r0, 0(r27)
/* 80347900 00344860  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80347904 00344864  28 00 00 00 */	cmplwi r0, 0
/* 80347908 00344868  41 82 00 14 */	beq lbl_8034791C
/* 8034790C 0034486C  38 00 00 00 */	li r0, 0
/* 80347910 00344870  7F 43 D3 78 */	mr r3, r26
/* 80347914 00344874  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80347918 00344878  48 03 39 C9 */	bl GXSetTevDirect
lbl_8034791C:
/* 8034791C 0034487C  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 80347920 00344880  3C 03 FF 01 */	addis r0, r3, 0xff01
/* 80347924 00344884  28 00 FF FF */	cmplwi r0, 0xffff
/* 80347928 00344888  41 82 00 24 */	beq lbl_8034794C
/* 8034792C 0034488C  3C 80 01 00 */	lis r4, 0x00FFFFFF@ha
/* 80347930 00344890  7F 43 D3 78 */	mr r3, r26
/* 80347934 00344894  38 04 FF FF */	addi r0, r4, 0x00FFFFFF@l
/* 80347938 00344898  38 80 00 FF */	li r4, 0xff
/* 8034793C 0034489C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80347940 003448A0  38 A0 00 FF */	li r5, 0xff
/* 80347944 003448A4  38 C0 00 FF */	li r6, 0xff
/* 80347948 003448A8  48 03 40 AD */	bl GXSetTevOrder
lbl_8034794C:
/* 8034794C 003448AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80347950 003448B0  3C 80 80 5A */	lis r4, sGXState__3CGX@ha
/* 80347954 003448B4  38 04 53 EC */	addi r0, r4, sGXState__3CGX@l
/* 80347958 003448B8  80 B9 00 04 */	lwz r5, 4(r25)
/* 8034795C 003448BC  54 64 10 3A */	slwi r4, r3, 2
/* 80347960 003448C0  7C 80 22 14 */	add r4, r0, r4
/* 80347964 003448C4  84 04 00 58 */	lwzu r0, 0x58(r4)
/* 80347968 003448C8  7C 00 28 40 */	cmplw r0, r5
/* 8034796C 003448CC  41 82 00 14 */	beq lbl_80347980
/* 80347970 003448D0  90 A4 00 00 */	stw r5, 0(r4)
/* 80347974 003448D4  38 81 00 08 */	addi r4, r1, 8
/* 80347978 003448D8  90 A1 00 08 */	stw r5, 8(r1)
/* 8034797C 003448DC  48 03 3D 69 */	bl GXSetTevKColor
lbl_80347980:
/* 80347980 003448E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80347984 003448E4  88 1C 00 18 */	lbz r0, 0x18(r28)
/* 80347988 003448E8  38 83 00 0C */	addi r4, r3, 0xc
/* 8034798C 003448EC  7C 04 00 00 */	cmpw r4, r0
/* 80347990 003448F0  41 82 00 10 */	beq lbl_803479A0
/* 80347994 003448F4  98 9C 00 18 */	stb r4, 0x18(r28)
/* 80347998 003448F8  7F 43 D3 78 */	mr r3, r26
/* 8034799C 003448FC  48 03 3D BD */	bl GXSetTevKColorSel
lbl_803479A0:
/* 803479A0 00344900  80 7F 00 00 */	lwz r3, 0(r31)
/* 803479A4 00344904  88 1C 00 19 */	lbz r0, 0x19(r28)
/* 803479A8 00344908  38 83 00 1C */	addi r4, r3, 0x1c
/* 803479AC 0034490C  7C 04 00 00 */	cmpw r4, r0
/* 803479B0 00344910  41 82 00 10 */	beq lbl_803479C0
/* 803479B4 00344914  98 9C 00 19 */	stb r4, 0x19(r28)
/* 803479B8 00344918  7F 43 D3 78 */	mr r3, r26
/* 803479BC 0034491C  48 03 3E 09 */	bl GXSetTevKAlphaSel
lbl_803479C0:
/* 803479C0 00344920  80 7E 00 00 */	lwz r3, 0(r30)
/* 803479C4 00344924  38 03 00 01 */	addi r0, r3, 1
/* 803479C8 00344928  90 1E 00 00 */	stw r0, 0(r30)
/* 803479CC 0034492C  80 7F 00 00 */	lwz r3, 0(r31)
/* 803479D0 00344930  38 03 00 01 */	addi r0, r3, 1
/* 803479D4 00344934  90 1F 00 00 */	stw r0, 0(r31)
lbl_803479D8:
/* 803479D8 00344938  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 803479DC 0034493C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803479E0 00344940  7C 08 03 A6 */	mtlr r0
/* 803479E4 00344944  38 21 00 30 */	addi r1, r1, 0x30
/* 803479E8 00344948  4E 80 00 20 */	blr

.global HandleAnimatedUV__FPCUi9_GXTexMtx11_GXPTTexMtx
HandleAnimatedUV__FPCUi9_GXTexMtx11_GXPTTexMtx:
/* 803479EC 0034494C  94 21 FC C0 */	stwu r1, -0x340(r1)
/* 803479F0 00344950  7C 08 02 A6 */	mflr r0
/* 803479F4 00344954  90 01 03 44 */	stw r0, 0x344(r1)
/* 803479F8 00344958  DB E1 03 30 */	stfd f31, 0x330(r1)
/* 803479FC 0034495C  F3 E1 03 38 */	psq_st f31, 824(r1), 0, qr0
/* 80347A00 00344960  DB C1 03 20 */	stfd f30, 0x320(r1)
/* 80347A04 00344964  F3 C1 03 28 */	psq_st f30, 808(r1), 0, qr0
/* 80347A08 00344968  DB A1 03 10 */	stfd f29, 0x310(r1)
/* 80347A0C 0034496C  F3 A1 03 18 */	psq_st f29, 792(r1), 0, qr0
/* 80347A10 00344970  DB 81 03 00 */	stfd f28, 0x300(r1)
/* 80347A14 00344974  F3 81 03 08 */	psq_st f28, 776(r1), 0, qr0
/* 80347A18 00344978  DB 61 02 F0 */	stfd f27, 0x2f0(r1)
/* 80347A1C 0034497C  F3 61 02 F8 */	psq_st f27, 760(r1), 0, qr0
/* 80347A20 00344980  BD E1 02 AC */	stmw r15, 0x2ac(r1)
/* 80347A24 00344984  7C 7C 1B 78 */	mr r28, r3
/* 80347A28 00344988  3C 60 80 3D */	lis r3, lbl_803D7F58@ha
/* 80347A2C 0034498C  81 FC 00 00 */	lwz r15, 0(r28)
/* 80347A30 00344990  7C 9B 23 78 */	mr r27, r4
/* 80347A34 00344994  7C BE 2B 78 */	mr r30, r5
/* 80347A38 00344998  3B E3 7F 58 */	addi r31, r3, lbl_803D7F58@l
/* 80347A3C 0034499C  28 0F 00 07 */	cmplwi r15, 7
/* 80347A40 003449A0  41 81 05 A0 */	bgt lbl_80347FE0
/* 80347A44 003449A4  3C 60 80 3F */	lis r3, lbl_803EF640@ha
/* 80347A48 003449A8  55 E0 10 3A */	slwi r0, r15, 2
/* 80347A4C 003449AC  38 63 F6 40 */	addi r3, r3, lbl_803EF640@l
/* 80347A50 003449B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80347A54 003449B4  7C 09 03 A6 */	mtctr r0
/* 80347A58 003449B8  4E 80 04 20 */	bctr
lbl_80347A5C:
/* 80347A5C 003449BC  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 80347A60 003449C0  38 61 00 CC */	addi r3, r1, 0xcc
/* 80347A64 003449C4  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 80347A68 003449C8  4B FC B2 35 */	bl GetQuickInverse__12CTransform4fCFv
/* 80347A6C 003449CC  3C 80 80 5A */	lis r4, mModelMatrix__9CGraphics@ha
/* 80347A70 003449D0  38 61 00 FC */	addi r3, r1, 0xfc
/* 80347A74 003449D4  38 A4 62 04 */	addi r5, r4, mModelMatrix__9CGraphics@l
/* 80347A78 003449D8  38 81 00 CC */	addi r4, r1, 0xcc
/* 80347A7C 003449DC  4B FC B4 B5 */	bl MultiplyIgnoreTranslation__12CTransform4fCFRC12CTransform4f
/* 80347A80 003449E0  38 61 02 4C */	addi r3, r1, 0x24c
/* 80347A84 003449E4  38 81 00 FC */	addi r4, r1, 0xfc
/* 80347A88 003449E8  4B FC B0 ED */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80347A8C 003449EC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80347A90 003449F0  7F 64 DB 78 */	mr r4, r27
/* 80347A94 003449F4  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 80347A98 003449F8  38 61 02 4C */	addi r3, r1, 0x24c
/* 80347A9C 003449FC  C0 46 00 00 */	lfs f2, 0(r6)
/* 80347AA0 00344A00  38 A0 00 00 */	li r5, 0
/* 80347AA4 00344A04  C0 26 00 04 */	lfs f1, 4(r6)
/* 80347AA8 00344A08  C0 06 00 08 */	lfs f0, 8(r6)
/* 80347AAC 00344A0C  D0 41 02 58 */	stfs f2, 0x258(r1)
/* 80347AB0 00344A10  D0 21 02 68 */	stfs f1, 0x268(r1)
/* 80347AB4 00344A14  D0 01 02 78 */	stfs f0, 0x278(r1)
/* 80347AB8 00344A18  48 03 49 D9 */	bl GXLoadTexMtxImm
/* 80347ABC 00344A1C  7F C4 F3 78 */	mr r4, r30
/* 80347AC0 00344A20  38 7F 00 00 */	addi r3, r31, 0
/* 80347AC4 00344A24  38 A0 00 00 */	li r5, 0
/* 80347AC8 00344A28  48 03 49 C9 */	bl GXLoadTexMtxImm
/* 80347ACC 00344A2C  38 60 00 01 */	li r3, 1
/* 80347AD0 00344A30  48 00 05 14 */	b lbl_80347FE4
lbl_80347AD4:
/* 80347AD4 00344A34  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 80347AD8 00344A38  38 61 00 6C */	addi r3, r1, 0x6c
/* 80347ADC 00344A3C  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 80347AE0 00344A40  4B FC B1 BD */	bl GetQuickInverse__12CTransform4fCFv
/* 80347AE4 00344A44  3C 80 80 5A */	lis r4, mModelMatrix__9CGraphics@ha
/* 80347AE8 00344A48  38 61 00 9C */	addi r3, r1, 0x9c
/* 80347AEC 00344A4C  38 A4 62 04 */	addi r5, r4, mModelMatrix__9CGraphics@l
/* 80347AF0 00344A50  38 81 00 6C */	addi r4, r1, 0x6c
/* 80347AF4 00344A54  4B FC AE 5D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80347AF8 00344A58  38 61 02 1C */	addi r3, r1, 0x21c
/* 80347AFC 00344A5C  38 81 00 9C */	addi r4, r1, 0x9c
/* 80347B00 00344A60  4B FC B0 75 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80347B04 00344A64  7F 64 DB 78 */	mr r4, r27
/* 80347B08 00344A68  38 61 02 1C */	addi r3, r1, 0x21c
/* 80347B0C 00344A6C  38 A0 00 00 */	li r5, 0
/* 80347B10 00344A70  48 03 49 81 */	bl GXLoadTexMtxImm
/* 80347B14 00344A74  7F C4 F3 78 */	mr r4, r30
/* 80347B18 00344A78  38 7F 00 00 */	addi r3, r31, 0
/* 80347B1C 00344A7C  38 A0 00 00 */	li r5, 0
/* 80347B20 00344A80  48 03 49 71 */	bl GXLoadTexMtxImm
/* 80347B24 00344A84  38 60 00 01 */	li r3, 1
/* 80347B28 00344A88  48 00 04 BC */	b lbl_80347FE4
lbl_80347B2C:
/* 80347B2C 00344A8C  C3 FC 00 04 */	lfs f31, 4(r28)
/* 80347B30 00344A90  C3 DC 00 08 */	lfs f30, 8(r28)
/* 80347B34 00344A94  C3 BC 00 0C */	lfs f29, 0xc(r28)
/* 80347B38 00344A98  C3 9C 00 10 */	lfs f28, 0x10(r28)
/* 80347B3C 00344A9C  4B FC 23 A5 */	bl GetSecondsMod900__9CGraphicsFv
/* 80347B40 00344AA0  EC 41 FF 7A */	fmadds f2, f1, f29, f31
/* 80347B44 00344AA4  3C 60 80 3F */	lis r3, lbl_803EF610@ha
/* 80347B48 00344AA8  EC 01 F7 3A */	fmadds f0, f1, f28, f30
/* 80347B4C 00344AAC  38 63 F6 10 */	addi r3, r3, lbl_803EF610@l
/* 80347B50 00344AB0  7F 64 DB 78 */	mr r4, r27
/* 80347B54 00344AB4  38 A0 00 00 */	li r5, 0
/* 80347B58 00344AB8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80347B5C 00344ABC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80347B60 00344AC0  48 03 49 31 */	bl GXLoadTexMtxImm
/* 80347B64 00344AC4  38 60 00 05 */	li r3, 5
/* 80347B68 00344AC8  48 00 04 7C */	b lbl_80347FE4
lbl_80347B6C:
/* 80347B6C 00344ACC  C3 9C 00 04 */	lfs f28, 4(r28)
/* 80347B70 00344AD0  C3 BC 00 08 */	lfs f29, 8(r28)
/* 80347B74 00344AD4  4B FC 23 6D */	bl GetSecondsMod900__9CGraphicsFv
/* 80347B78 00344AD8  EF 81 E7 7A */	fmadds f28, f1, f29, f28
/* 80347B7C 00344ADC  FC 20 E0 90 */	fmr f1, f28
/* 80347B80 00344AE0  4B FC D2 71 */	bl FastSinR__5CMathFf
/* 80347B84 00344AE4  FF E0 08 90 */	fmr f31, f1
/* 80347B88 00344AE8  FC 20 E0 90 */	fmr f1, f28
/* 80347B8C 00344AEC  4B FC D1 B9 */	bl FastCosR__5CMathFf
/* 80347B90 00344AF0  EC 41 F8 28 */	fsubs f2, f1, f31
/* 80347B94 00344AF4  C0 62 CB E8 */	lfs f3, lbl_805AE908@sda21(r2)
/* 80347B98 00344AF8  EC 1F 08 2A */	fadds f0, f31, f1
/* 80347B9C 00344AFC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80347BA0 00344B00  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 80347BA4 00344B04  FC A0 F8 50 */	fneg f5, f31
/* 80347BA8 00344B08  EC 43 10 28 */	fsubs f2, f3, f2
/* 80347BAC 00344B0C  C0 82 CB FC */	lfs f4, lbl_805AE91C@sda21(r2)
/* 80347BB0 00344B10  EC 03 00 28 */	fsubs f0, f3, f0
/* 80347BB4 00344B14  81 1F 00 3C */	lwz r8, 0x3c(r31)
/* 80347BB8 00344B18  80 FF 00 40 */	lwz r7, 0x40(r31)
/* 80347BBC 00344B1C  7F 64 DB 78 */	mr r4, r27
/* 80347BC0 00344B20  80 DF 00 44 */	lwz r6, 0x44(r31)
/* 80347BC4 00344B24  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80347BC8 00344B28  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80347BCC 00344B2C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80347BD0 00344B30  90 61 01 EC */	stw r3, 0x1ec(r1)
/* 80347BD4 00344B34  38 61 01 EC */	addi r3, r1, 0x1ec
/* 80347BD8 00344B38  81 5F 00 38 */	lwz r10, 0x38(r31)
/* 80347BDC 00344B3C  90 A1 01 F0 */	stw r5, 0x1f0(r1)
/* 80347BE0 00344B40  38 A0 00 00 */	li r5, 0
/* 80347BE4 00344B44  81 3F 00 48 */	lwz r9, 0x48(r31)
/* 80347BE8 00344B48  91 01 01 F8 */	stw r8, 0x1f8(r1)
/* 80347BEC 00344B4C  81 1F 00 50 */	lwz r8, 0x50(r31)
/* 80347BF0 00344B50  90 E1 01 FC */	stw r7, 0x1fc(r1)
/* 80347BF4 00344B54  80 FF 00 54 */	lwz r7, 0x54(r31)
/* 80347BF8 00344B58  90 C1 02 00 */	stw r6, 0x200(r1)
/* 80347BFC 00344B5C  80 DF 00 58 */	lwz r6, 0x58(r31)
/* 80347C00 00344B60  90 01 02 08 */	stw r0, 0x208(r1)
/* 80347C04 00344B64  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 80347C08 00344B68  91 41 01 F4 */	stw r10, 0x1f4(r1)
/* 80347C0C 00344B6C  91 21 02 04 */	stw r9, 0x204(r1)
/* 80347C10 00344B70  91 01 02 0C */	stw r8, 0x20c(r1)
/* 80347C14 00344B74  90 E1 02 10 */	stw r7, 0x210(r1)
/* 80347C18 00344B78  90 C1 02 14 */	stw r6, 0x214(r1)
/* 80347C1C 00344B7C  90 01 02 18 */	stw r0, 0x218(r1)
/* 80347C20 00344B80  D0 21 01 EC */	stfs f1, 0x1ec(r1)
/* 80347C24 00344B84  D0 A1 01 F0 */	stfs f5, 0x1f0(r1)
/* 80347C28 00344B88  D0 41 01 F8 */	stfs f2, 0x1f8(r1)
/* 80347C2C 00344B8C  D3 E1 01 FC */	stfs f31, 0x1fc(r1)
/* 80347C30 00344B90  D0 21 02 00 */	stfs f1, 0x200(r1)
/* 80347C34 00344B94  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 80347C38 00344B98  48 03 48 59 */	bl GXLoadTexMtxImm
/* 80347C3C 00344B9C  38 60 00 03 */	li r3, 3
/* 80347C40 00344BA0  48 00 03 A4 */	b lbl_80347FE4
lbl_80347C44:
/* 80347C44 00344BA4  C3 9C 00 04 */	lfs f28, 4(r28)
/* 80347C48 00344BA8  C3 BC 00 08 */	lfs f29, 8(r28)
/* 80347C4C 00344BAC  C3 DC 00 0C */	lfs f30, 0xc(r28)
/* 80347C50 00344BB0  C3 7C 00 10 */	lfs f27, 0x10(r28)
/* 80347C54 00344BB4  4B FC 22 8D */	bl GetSecondsMod900__9CGraphicsFv
/* 80347C58 00344BB8  EC 1B 08 2A */	fadds f0, f27, f1
/* 80347C5C 00344BBC  3C 60 43 30 */	lis r3, 0x4330
/* 80347C60 00344BC0  C0 42 CB E8 */	lfs f2, lbl_805AE908@sda21(r2)
/* 80347C64 00344BC4  90 61 02 88 */	stw r3, 0x288(r1)
/* 80347C68 00344BC8  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80347C6C 00344BCC  C8 22 CC 10 */	lfd f1, lbl_805AE930@sda21(r2)
/* 80347C70 00344BD0  EC 7E 00 32 */	fmuls f3, f30, f0
/* 80347C74 00344BD4  EC 03 00 B2 */	fmuls f0, f3, f2
/* 80347C78 00344BD8  FC 00 00 1E */	fctiwz f0, f0
/* 80347C7C 00344BDC  D8 01 02 80 */	stfd f0, 0x280(r1)
/* 80347C80 00344BE0  80 01 02 84 */	lwz r0, 0x284(r1)
/* 80347C84 00344BE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80347C88 00344BE8  90 01 02 8C */	stw r0, 0x28c(r1)
/* 80347C8C 00344BEC  C8 01 02 88 */	lfd f0, 0x288(r1)
/* 80347C90 00344BF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80347C94 00344BF4  EC 00 18 BC */	fnmsubs f0, f0, f2, f3
/* 80347C98 00344BF8  EF E0 07 72 */	fmuls f31, f0, f29
/* 80347C9C 00344BFC  F3 E1 D0 08 */	psq_st f31, 8(r1), 1, qr5
/* 80347CA0 00344C00  28 0F 00 04 */	cmplwi r15, 4
/* 80347CA4 00344C04  A8 01 00 08 */	lha r0, 8(r1)
/* 80347CA8 00344C08  90 61 02 90 */	stw r3, 0x290(r1)
/* 80347CAC 00344C0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80347CB0 00344C10  90 01 02 94 */	stw r0, 0x294(r1)
/* 80347CB4 00344C14  C8 01 02 90 */	lfd f0, 0x290(r1)
/* 80347CB8 00344C18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80347CBC 00344C1C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80347CC0 00344C20  40 82 00 1C */	bne lbl_80347CDC
/* 80347CC4 00344C24  3C 60 80 3F */	lis r3, lbl_803EF610@ha
/* 80347CC8 00344C28  C0 02 CB DC */	lfs f0, lbl_805AE8FC@sda21(r2)
/* 80347CCC 00344C2C  38 63 F6 10 */	addi r3, r3, lbl_803EF610@l
/* 80347CD0 00344C30  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80347CD4 00344C34  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80347CD8 00344C38  48 00 00 18 */	b lbl_80347CF0
lbl_80347CDC:
/* 80347CDC 00344C3C  3C 60 80 3F */	lis r3, lbl_803EF610@ha
/* 80347CE0 00344C40  C0 02 CB DC */	lfs f0, lbl_805AE8FC@sda21(r2)
/* 80347CE4 00344C44  38 63 F6 10 */	addi r3, r3, lbl_803EF610@l
/* 80347CE8 00344C48  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80347CEC 00344C4C  D0 23 00 1C */	stfs f1, 0x1c(r3)
lbl_80347CF0:
/* 80347CF0 00344C50  3C 60 80 3F */	lis r3, lbl_803EF610@ha
/* 80347CF4 00344C54  7F 64 DB 78 */	mr r4, r27
/* 80347CF8 00344C58  38 63 F6 10 */	addi r3, r3, lbl_803EF610@l
/* 80347CFC 00344C5C  38 A0 00 00 */	li r5, 0
/* 80347D00 00344C60  48 03 47 91 */	bl GXLoadTexMtxImm
/* 80347D04 00344C64  38 60 00 05 */	li r3, 5
/* 80347D08 00344C68  48 00 02 DC */	b lbl_80347FE4
lbl_80347D0C:
/* 80347D0C 00344C6C  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 80347D10 00344C70  83 9F 00 60 */	lwz r28, 0x60(r31)
/* 80347D14 00344C74  3B 63 62 04 */	addi r27, r3, mModelMatrix__9CGraphics@l
/* 80347D18 00344C78  83 BF 00 64 */	lwz r29, 0x64(r31)
/* 80347D1C 00344C7C  C0 42 CB D8 */	lfs f2, lbl_805AE8F8@sda21(r2)
/* 80347D20 00344C80  38 61 01 BC */	addi r3, r1, 0x1bc
/* 80347D24 00344C84  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 80347D28 00344C88  38 A0 00 00 */	li r5, 0
/* 80347D2C 00344C8C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80347D30 00344C90  81 9F 00 68 */	lwz r12, 0x68(r31)
/* 80347D34 00344C94  EC 22 00 72 */	fmuls f1, f2, f1
/* 80347D38 00344C98  81 5F 00 70 */	lwz r10, 0x70(r31)
/* 80347D3C 00344C9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80347D40 00344CA0  81 3F 00 74 */	lwz r9, 0x74(r31)
/* 80347D44 00344CA4  81 1F 00 78 */	lwz r8, 0x78(r31)
/* 80347D48 00344CA8  80 FF 00 80 */	lwz r7, 0x80(r31)
/* 80347D4C 00344CAC  80 DF 00 84 */	lwz r6, 0x84(r31)
/* 80347D50 00344CB0  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80347D54 00344CB4  81 7F 00 9C */	lwz r11, 0x9c(r31)
/* 80347D58 00344CB8  82 FF 00 AC */	lwz r23, 0xac(r31)
/* 80347D5C 00344CBC  91 61 01 98 */	stw r11, 0x198(r1)
/* 80347D60 00344CC0  81 7F 00 6C */	lwz r11, 0x6c(r31)
/* 80347D64 00344CC4  92 E1 01 A8 */	stw r23, 0x1a8(r1)
/* 80347D68 00344CC8  81 FF 00 7C */	lwz r15, 0x7c(r31)
/* 80347D6C 00344CCC  82 1F 00 8C */	lwz r16, 0x8c(r31)
/* 80347D70 00344CD0  82 3F 00 90 */	lwz r17, 0x90(r31)
/* 80347D74 00344CD4  82 5F 00 94 */	lwz r18, 0x94(r31)
/* 80347D78 00344CD8  82 7F 00 98 */	lwz r19, 0x98(r31)
/* 80347D7C 00344CDC  82 9F 00 A0 */	lwz r20, 0xa0(r31)
/* 80347D80 00344CE0  82 BF 00 A4 */	lwz r21, 0xa4(r31)
/* 80347D84 00344CE4  82 DF 00 A8 */	lwz r22, 0xa8(r31)
/* 80347D88 00344CE8  82 FF 00 B0 */	lwz r23, 0xb0(r31)
/* 80347D8C 00344CEC  83 5F 00 B4 */	lwz r26, 0xb4(r31)
/* 80347D90 00344CF0  83 3F 00 B8 */	lwz r25, 0xb8(r31)
/* 80347D94 00344CF4  83 1F 00 BC */	lwz r24, 0xbc(r31)
/* 80347D98 00344CF8  93 81 01 BC */	stw r28, 0x1bc(r1)
/* 80347D9C 00344CFC  C1 5B 00 00 */	lfs f10, 0(r27)
/* 80347DA0 00344D00  93 A1 01 C0 */	stw r29, 0x1c0(r1)
/* 80347DA4 00344D04  C1 3B 00 04 */	lfs f9, 4(r27)
/* 80347DA8 00344D08  91 81 01 C4 */	stw r12, 0x1c4(r1)
/* 80347DAC 00344D0C  C1 1B 00 08 */	lfs f8, 8(r27)
/* 80347DB0 00344D10  91 41 01 CC */	stw r10, 0x1cc(r1)
/* 80347DB4 00344D14  C0 FB 00 10 */	lfs f7, 0x10(r27)
/* 80347DB8 00344D18  91 21 01 D0 */	stw r9, 0x1d0(r1)
/* 80347DBC 00344D1C  C0 DB 00 14 */	lfs f6, 0x14(r27)
/* 80347DC0 00344D20  91 01 01 D4 */	stw r8, 0x1d4(r1)
/* 80347DC4 00344D24  C0 BB 00 18 */	lfs f5, 0x18(r27)
/* 80347DC8 00344D28  90 E1 01 DC */	stw r7, 0x1dc(r1)
/* 80347DCC 00344D2C  C0 9B 00 20 */	lfs f4, 0x20(r27)
/* 80347DD0 00344D30  90 C1 01 E0 */	stw r6, 0x1e0(r1)
/* 80347DD4 00344D34  C0 7B 00 24 */	lfs f3, 0x24(r27)
/* 80347DD8 00344D38  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80347DDC 00344D3C  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80347DE0 00344D40  91 61 01 C8 */	stw r11, 0x1c8(r1)
/* 80347DE4 00344D44  91 E1 01 D8 */	stw r15, 0x1d8(r1)
/* 80347DE8 00344D48  92 01 01 E8 */	stw r16, 0x1e8(r1)
/* 80347DEC 00344D4C  D1 41 01 BC */	stfs f10, 0x1bc(r1)
/* 80347DF0 00344D50  D1 21 01 C0 */	stfs f9, 0x1c0(r1)
/* 80347DF4 00344D54  D1 01 01 C4 */	stfs f8, 0x1c4(r1)
/* 80347DF8 00344D58  D0 E1 01 CC */	stfs f7, 0x1cc(r1)
/* 80347DFC 00344D5C  D0 C1 01 D0 */	stfs f6, 0x1d0(r1)
/* 80347E00 00344D60  D0 A1 01 D4 */	stfs f5, 0x1d4(r1)
/* 80347E04 00344D64  D0 81 01 DC */	stfs f4, 0x1dc(r1)
/* 80347E08 00344D68  D0 61 01 E0 */	stfs f3, 0x1e0(r1)
/* 80347E0C 00344D6C  D0 41 01 E4 */	stfs f2, 0x1e4(r1)
/* 80347E10 00344D70  92 21 01 8C */	stw r17, 0x18c(r1)
/* 80347E14 00344D74  92 41 01 90 */	stw r18, 0x190(r1)
/* 80347E18 00344D78  92 61 01 94 */	stw r19, 0x194(r1)
/* 80347E1C 00344D7C  92 81 01 9C */	stw r20, 0x19c(r1)
/* 80347E20 00344D80  92 A1 01 A0 */	stw r21, 0x1a0(r1)
/* 80347E24 00344D84  92 C1 01 A4 */	stw r22, 0x1a4(r1)
/* 80347E28 00344D88  92 E1 01 AC */	stw r23, 0x1ac(r1)
/* 80347E2C 00344D8C  93 41 01 B0 */	stw r26, 0x1b0(r1)
/* 80347E30 00344D90  93 21 01 B4 */	stw r25, 0x1b4(r1)
/* 80347E34 00344D94  93 01 01 B8 */	stw r24, 0x1b8(r1)
/* 80347E38 00344D98  D0 21 01 98 */	stfs f1, 0x198(r1)
/* 80347E3C 00344D9C  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80347E40 00344DA0  48 03 46 51 */	bl GXLoadTexMtxImm
/* 80347E44 00344DA4  7F C4 F3 78 */	mr r4, r30
/* 80347E48 00344DA8  38 61 01 8C */	addi r3, r1, 0x18c
/* 80347E4C 00344DAC  38 A0 00 00 */	li r5, 0
/* 80347E50 00344DB0  48 03 46 41 */	bl GXLoadTexMtxImm
/* 80347E54 00344DB4  38 60 00 01 */	li r3, 1
/* 80347E58 00344DB8  48 00 01 8C */	b lbl_80347FE4
lbl_80347E5C:
/* 80347E5C 00344DBC  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 80347E60 00344DC0  38 61 00 0C */	addi r3, r1, 0xc
/* 80347E64 00344DC4  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 80347E68 00344DC8  4B FC AE 35 */	bl GetQuickInverse__12CTransform4fCFv
/* 80347E6C 00344DCC  3C 80 80 5A */	lis r4, mModelMatrix__9CGraphics@ha
/* 80347E70 00344DD0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80347E74 00344DD4  38 A4 62 04 */	addi r5, r4, mModelMatrix__9CGraphics@l
/* 80347E78 00344DD8  38 81 00 0C */	addi r4, r1, 0xc
/* 80347E7C 00344DDC  4B FC B0 B5 */	bl MultiplyIgnoreTranslation__12CTransform4fCFRC12CTransform4f
/* 80347E80 00344DE0  38 61 01 5C */	addi r3, r1, 0x15c
/* 80347E84 00344DE4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80347E88 00344DE8  4B FC AC ED */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80347E8C 00344DEC  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 80347E90 00344DF0  3C C0 43 30 */	lis r6, 0x4330
/* 80347E94 00344DF4  38 A3 61 D4 */	addi r5, r3, mViewMatrix__9CGraphics@l
/* 80347E98 00344DF8  81 1F 00 C0 */	lwz r8, 0xc0(r31)
/* 80347E9C 00344DFC  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80347EA0 00344E00  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80347EA4 00344E04  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80347EA8 00344E08  38 E3 66 A0 */	addi r7, r3, sZeroVector__9CVector3f@l
/* 80347EAC 00344E0C  83 5F 00 CC */	lwz r26, 0xcc(r31)
/* 80347EB0 00344E10  7F 64 DB 78 */	mr r4, r27
/* 80347EB4 00344E14  EC 41 00 2A */	fadds f2, f1, f0
/* 80347EB8 00344E18  C0 62 CC 0C */	lfs f3, lbl_805AE92C@sda21(r2)
/* 80347EBC 00344E1C  C0 22 CB D8 */	lfs f1, lbl_805AE8F8@sda21(r2)
/* 80347EC0 00344E20  38 61 01 5C */	addi r3, r1, 0x15c
/* 80347EC4 00344E24  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 80347EC8 00344E28  38 A0 00 00 */	li r5, 0
/* 80347ECC 00344E2C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80347ED0 00344E30  C0 9C 00 08 */	lfs f4, 8(r28)
/* 80347ED4 00344E34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80347ED8 00344E38  81 9F 00 D8 */	lwz r12, 0xd8(r31)
/* 80347EDC 00344E3C  C0 62 CB E8 */	lfs f3, lbl_805AE908@sda21(r2)
/* 80347EE0 00344E40  EC E4 00 B2 */	fmuls f7, f4, f2
/* 80347EE4 00344E44  ED 04 00 32 */	fmuls f8, f4, f0
/* 80347EE8 00344E48  81 7F 00 DC */	lwz r11, 0xdc(r31)
/* 80347EEC 00344E4C  C0 C7 00 00 */	lfs f6, 0(r7)
/* 80347EF0 00344E50  EC 27 00 F2 */	fmuls f1, f7, f3
/* 80347EF4 00344E54  C0 A7 00 04 */	lfs f5, 4(r7)
/* 80347EF8 00344E58  EC 08 00 F2 */	fmuls f0, f8, f3
/* 80347EFC 00344E5C  C0 87 00 08 */	lfs f4, 8(r7)
/* 80347F00 00344E60  FC 20 08 1E */	fctiwz f1, f1
/* 80347F04 00344E64  83 1F 00 C4 */	lwz r24, 0xc4(r31)
/* 80347F08 00344E68  FC 00 00 1E */	fctiwz f0, f0
/* 80347F0C 00344E6C  83 3F 00 C8 */	lwz r25, 0xc8(r31)
/* 80347F10 00344E70  83 BF 00 D0 */	lwz r29, 0xd0(r31)
/* 80347F14 00344E74  D8 21 02 90 */	stfd f1, 0x290(r1)
/* 80347F18 00344E78  83 7F 00 D4 */	lwz r27, 0xd4(r31)
/* 80347F1C 00344E7C  D8 01 02 80 */	stfd f0, 0x280(r1)
/* 80347F20 00344E80  80 E1 02 94 */	lwz r7, 0x294(r1)
/* 80347F24 00344E84  80 01 02 84 */	lwz r0, 0x284(r1)
/* 80347F28 00344E88  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80347F2C 00344E8C  90 C1 02 88 */	stw r6, 0x288(r1)
/* 80347F30 00344E90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80347F34 00344E94  C8 42 CC 10 */	lfd f2, lbl_805AE930@sda21(r2)
/* 80347F38 00344E98  90 E1 02 8C */	stw r7, 0x28c(r1)
/* 80347F3C 00344E9C  C1 3C 00 04 */	lfs f9, 4(r28)
/* 80347F40 00344EA0  C8 01 02 88 */	lfd f0, 0x288(r1)
/* 80347F44 00344EA4  C0 22 CB FC */	lfs f1, lbl_805AE91C@sda21(r2)
/* 80347F48 00344EA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80347F4C 00344EAC  81 5F 00 E0 */	lwz r10, 0xe0(r31)
/* 80347F50 00344EB0  81 3F 00 E4 */	lwz r9, 0xe4(r31)
/* 80347F54 00344EB4  ED 21 02 72 */	fmuls f9, f1, f9
/* 80347F58 00344EB8  91 01 01 2C */	stw r8, 0x12c(r1)
/* 80347F5C 00344EBC  81 1F 00 E8 */	lwz r8, 0xe8(r31)
/* 80347F60 00344EC0  91 81 01 44 */	stw r12, 0x144(r1)
/* 80347F64 00344EC4  EC 20 38 FC */	fnmsubs f1, f0, f3, f7
/* 80347F68 00344EC8  80 FF 00 EC */	lwz r7, 0xec(r31)
/* 80347F6C 00344ECC  93 41 01 38 */	stw r26, 0x138(r1)
/* 80347F70 00344ED0  90 01 02 9C */	stw r0, 0x29c(r1)
/* 80347F74 00344ED4  90 C1 02 98 */	stw r6, 0x298(r1)
/* 80347F78 00344ED8  C8 01 02 98 */	lfd f0, 0x298(r1)
/* 80347F7C 00344EDC  91 61 01 48 */	stw r11, 0x148(r1)
/* 80347F80 00344EE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80347F84 00344EE4  D0 C1 01 68 */	stfs f6, 0x168(r1)
/* 80347F88 00344EE8  EC 00 40 FC */	fnmsubs f0, f0, f3, f8
/* 80347F8C 00344EEC  D0 A1 01 78 */	stfs f5, 0x178(r1)
/* 80347F90 00344EF0  D0 81 01 88 */	stfs f4, 0x188(r1)
/* 80347F94 00344EF4  93 01 01 30 */	stw r24, 0x130(r1)
/* 80347F98 00344EF8  93 21 01 34 */	stw r25, 0x134(r1)
/* 80347F9C 00344EFC  93 A1 01 3C */	stw r29, 0x13c(r1)
/* 80347FA0 00344F00  93 61 01 40 */	stw r27, 0x140(r1)
/* 80347FA4 00344F04  91 41 01 4C */	stw r10, 0x14c(r1)
/* 80347FA8 00344F08  91 21 01 50 */	stw r9, 0x150(r1)
/* 80347FAC 00344F0C  91 01 01 54 */	stw r8, 0x154(r1)
/* 80347FB0 00344F10  90 E1 01 58 */	stw r7, 0x158(r1)
/* 80347FB4 00344F14  D1 21 01 2C */	stfs f9, 0x12c(r1)
/* 80347FB8 00344F18  D0 21 01 38 */	stfs f1, 0x138(r1)
/* 80347FBC 00344F1C  D1 21 01 44 */	stfs f9, 0x144(r1)
/* 80347FC0 00344F20  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 80347FC4 00344F24  48 03 44 CD */	bl GXLoadTexMtxImm
/* 80347FC8 00344F28  7F C4 F3 78 */	mr r4, r30
/* 80347FCC 00344F2C  38 61 01 2C */	addi r3, r1, 0x12c
/* 80347FD0 00344F30  38 A0 00 00 */	li r5, 0
/* 80347FD4 00344F34  48 03 44 BD */	bl GXLoadTexMtxImm
/* 80347FD8 00344F38  38 60 00 03 */	li r3, 3
/* 80347FDC 00344F3C  48 00 00 08 */	b lbl_80347FE4
lbl_80347FE0:
/* 80347FE0 00344F40  38 60 00 00 */	li r3, 0
lbl_80347FE4:
/* 80347FE4 00344F44  E3 E1 03 38 */	psq_l f31, 824(r1), 0, qr0
/* 80347FE8 00344F48  CB E1 03 30 */	lfd f31, 0x330(r1)
/* 80347FEC 00344F4C  E3 C1 03 28 */	psq_l f30, 808(r1), 0, qr0
/* 80347FF0 00344F50  CB C1 03 20 */	lfd f30, 0x320(r1)
/* 80347FF4 00344F54  E3 A1 03 18 */	psq_l f29, 792(r1), 0, qr0
/* 80347FF8 00344F58  CB A1 03 10 */	lfd f29, 0x310(r1)
/* 80347FFC 00344F5C  E3 81 03 08 */	psq_l f28, 776(r1), 0, qr0
/* 80348000 00344F60  CB 81 03 00 */	lfd f28, 0x300(r1)
/* 80348004 00344F64  E3 61 02 F8 */	psq_l f27, 760(r1), 0, qr0
/* 80348008 00344F68  CB 61 02 F0 */	lfd f27, 0x2f0(r1)
/* 8034800C 00344F6C  B9 E1 02 AC */	lmw r15, 0x2ac(r1)
/* 80348010 00344F70  80 01 03 44 */	lwz r0, 0x344(r1)
/* 80348014 00344F74  7C 08 03 A6 */	mtlr r0
/* 80348018 00344F78  38 21 03 40 */	addi r1, r1, 0x340
/* 8034801C 00344F7C  4E 80 00 20 */	blr

.global HandleTev__FiPCUiPCUib
HandleTev__FiPCUiPCUib:
/* 80348020 00344F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80348024 00344F84  7C 08 02 A6 */	mflr r0
/* 80348028 00344F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034802C 00344F8C  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80348030 00344F90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80348034 00344F94  7C 9F 23 78 */	mr r31, r4
/* 80348038 00344F98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034803C 00344F9C  7C 7E 1B 78 */	mr r30, r3
/* 80348040 00344FA0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80348044 00344FA4  7C BD 2B 78 */	mr r29, r5
/* 80348048 00344FA8  41 82 00 10 */	beq lbl_80348058
/* 8034804C 00344FAC  3C 80 00 08 */	lis r4, 0x0007A04F@ha
/* 80348050 00344FB0  38 84 A0 4F */	addi r4, r4, 0x0007A04F@l
/* 80348054 00344FB4  48 00 00 08 */	b lbl_8034805C
lbl_80348058:
/* 80348058 00344FB8  80 9F 00 00 */	lwz r4, 0(r31)
lbl_8034805C:
/* 8034805C 00344FBC  80 BF 00 04 */	lwz r5, 4(r31)
/* 80348060 00344FC0  80 DF 00 08 */	lwz r6, 8(r31)
/* 80348064 00344FC4  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 80348068 00344FC8  4B FB FC 81 */	bl SetStandardDirectTev_Compressed__3CGXF13_GXTevStageIDUiUiUiUi
/* 8034806C 00344FCC  1C BE 00 1C */	mulli r5, r30, 0x1c
/* 80348070 00344FD0  80 DD 00 00 */	lwz r6, 0(r29)
/* 80348074 00344FD4  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80348078 00344FD8  83 BF 00 10 */	lwz r29, 0x10(r31)
/* 8034807C 00344FDC  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 80348080 00344FE0  38 03 53 EC */	addi r0, r3, sGXState__3CGX@l
/* 80348084 00344FE4  7C 60 2A 14 */	add r3, r0, r5
/* 80348088 00344FE8  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8034808C 00344FEC  3B E3 00 68 */	addi r31, r3, 0x68
/* 80348090 00344FF0  7C 83 23 78 */	mr r3, r4
/* 80348094 00344FF4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80348098 00344FF8  50 C3 04 2E */	rlwimi r3, r6, 0, 0x10, 0x17
/* 8034809C 00344FFC  57 A6 06 3E */	clrlwi r6, r29, 0x18
/* 803480A0 00345000  53 A3 82 1E */	rlwimi r3, r29, 0x10, 8, 0xf
/* 803480A4 00345004  7C 00 18 40 */	cmplw r0, r3
/* 803480A8 00345008  41 82 00 10 */	beq lbl_803480B8
/* 803480AC 0034500C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 803480B0 00345010  7F C3 F3 78 */	mr r3, r30
/* 803480B4 00345014  48 03 39 41 */	bl GXSetTevOrder
lbl_803480B8:
/* 803480B8 00345018  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 803480BC 0034501C  57 A4 C6 3E */	rlwinm r4, r29, 0x18, 0x18, 0x1f
/* 803480C0 00345020  7C 04 00 00 */	cmpw r4, r0
/* 803480C4 00345024  41 82 00 10 */	beq lbl_803480D4
/* 803480C8 00345028  98 9F 00 18 */	stb r4, 0x18(r31)
/* 803480CC 0034502C  7F C3 F3 78 */	mr r3, r30
/* 803480D0 00345030  48 03 36 89 */	bl GXSetTevKColorSel
lbl_803480D4:
/* 803480D4 00345034  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 803480D8 00345038  57 A4 86 3E */	rlwinm r4, r29, 0x10, 0x18, 0x1f
/* 803480DC 0034503C  7C 04 00 00 */	cmpw r4, r0
/* 803480E0 00345040  41 82 00 10 */	beq lbl_803480F0
/* 803480E4 00345044  98 9F 00 19 */	stb r4, 0x19(r31)
/* 803480E8 00345048  7F C3 F3 78 */	mr r3, r30
/* 803480EC 0034504C  48 03 36 D9 */	bl GXSetTevKAlphaSel
lbl_803480F0:
/* 803480F0 00345050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803480F4 00345054  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803480F8 00345058  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803480FC 0034505C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80348100 00345060  7C 08 03 A6 */	mtlr r0
/* 80348104 00345064  38 21 00 20 */	addi r1, r1, 0x20
/* 80348108 00345068  4E 80 00 20 */	blr

.global SetupBlendMode__13CCubeMaterialFUiRC11CModelFlagsb
SetupBlendMode__13CCubeMaterialFUiRC11CModelFlagsb:
/* 8034810C 0034506C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80348110 00345070  7C 08 02 A6 */	mflr r0
/* 80348114 00345074  90 01 00 24 */	stw r0, 0x24(r1)
/* 80348118 00345078  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8034811C 0034507C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80348120 00345080  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80348124 00345084  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80348128 00345088  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 8034812C 0034508C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80348130 00345090  54 7C 84 3E */	srwi r28, r3, 0x10
/* 80348134 00345094  8B C4 00 00 */	lbz r30, 0(r4)
/* 80348138 00345098  7F DE 07 74 */	extsb r30, r30
/* 8034813C 0034509C  41 82 00 4C */	beq lbl_80348188
/* 80348140 003450A0  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80348144 003450A4  38 83 53 EC */	addi r4, r3, sGXState__3CGX@l
/* 80348148 003450A8  80 04 02 48 */	lwz r0, 0x248(r4)
/* 8034814C 003450AC  28 00 0A 06 */	cmplwi r0, 0xa06
/* 80348150 003450B0  41 82 00 2C */	beq lbl_8034817C
/* 80348154 003450B4  38 00 0A 06 */	li r0, 0xa06
/* 80348158 003450B8  38 60 00 06 */	li r3, 6
/* 8034815C 003450BC  90 04 02 48 */	stw r0, 0x248(r4)
/* 80348160 003450C0  38 80 00 40 */	li r4, 0x40
/* 80348164 003450C4  38 A0 00 01 */	li r5, 1
/* 80348168 003450C8  38 C0 00 00 */	li r6, 0
/* 8034816C 003450CC  38 E0 00 00 */	li r7, 0
/* 80348170 003450D0  48 03 37 AD */	bl GXSetAlphaCompare
/* 80348174 003450D4  38 60 00 00 */	li r3, 0
/* 80348178 003450D8  48 03 3E 15 */	bl GXSetZCompLoc
lbl_8034817C:
/* 8034817C 003450DC  3B A0 00 01 */	li r29, 1
/* 80348180 003450E0  3B 80 00 00 */	li r28, 0
/* 80348184 003450E4  48 00 00 48 */	b lbl_803481CC
lbl_80348188:
/* 80348188 003450E8  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 8034818C 003450EC  38 A3 53 EC */	addi r5, r3, sGXState__3CGX@l
/* 80348190 003450F0  80 65 02 48 */	lwz r3, 0x248(r5)
/* 80348194 003450F4  3C 03 FF FF */	addis r0, r3, 0xffff
/* 80348198 003450F8  28 00 C8 07 */	cmplwi r0, 0xc807
/* 8034819C 003450FC  41 82 00 30 */	beq lbl_803481CC
/* 803481A0 00345100  3C 80 00 02 */	lis r4, 0x0001C807@ha
/* 803481A4 00345104  38 60 00 07 */	li r3, 7
/* 803481A8 00345108  38 04 C8 07 */	addi r0, r4, 0x0001C807@l
/* 803481AC 0034510C  38 80 00 00 */	li r4, 0
/* 803481B0 00345110  90 05 02 48 */	stw r0, 0x248(r5)
/* 803481B4 00345114  38 A0 00 01 */	li r5, 1
/* 803481B8 00345118  38 C0 00 07 */	li r6, 7
/* 803481BC 0034511C  38 E0 00 00 */	li r7, 0
/* 803481C0 00345120  48 03 37 5D */	bl GXSetAlphaCompare
/* 803481C4 00345124  38 60 00 01 */	li r3, 1
/* 803481C8 00345128  48 03 3D C5 */	bl GXSetZCompLoc
lbl_803481CC:
/* 803481CC 0034512C  2C 1E 00 04 */	cmpwi r30, 4
/* 803481D0 00345130  40 81 00 2C */	ble lbl_803481FC
/* 803481D4 00345134  2C 1D 00 01 */	cmpwi r29, 1
/* 803481D8 00345138  40 82 00 24 */	bne lbl_803481FC
/* 803481DC 0034513C  2C 1C 00 00 */	cmpwi r28, 0
/* 803481E0 00345140  3B A0 00 04 */	li r29, 4
/* 803481E4 00345144  40 82 00 18 */	bne lbl_803481FC
/* 803481E8 00345148  2C 1E 00 06 */	cmpwi r30, 6
/* 803481EC 0034514C  38 00 00 05 */	li r0, 5
/* 803481F0 00345150  40 81 00 08 */	ble lbl_803481F8
/* 803481F4 00345154  38 00 00 01 */	li r0, 1
lbl_803481F8:
/* 803481F8 00345158  7C 1C 03 78 */	mr r28, r0
lbl_803481FC:
/* 803481FC 0034515C  3C 60 80 5A */	lis r3, sGXState__3CGX@ha
/* 80348200 00345160  57 A0 16 FA */	rlwinm r0, r29, 2, 0x1b, 0x1d
/* 80348204 00345164  3B E3 53 EC */	addi r31, r3, sGXState__3CGX@l
/* 80348208 00345168  60 1E 00 01 */	ori r30, r0, 1
/* 8034820C 0034516C  A0 1F 00 56 */	lhz r0, 0x56(r31)
/* 80348210 00345170  53 9E 2E 34 */	rlwimi r30, r28, 5, 0x18, 0x1a
/* 80348214 00345174  7C 1E 00 40 */	cmplw r30, r0
/* 80348218 00345178  41 82 00 24 */	beq lbl_8034823C
/* 8034821C 0034517C  7F C3 F3 78 */	mr r3, r30
/* 80348220 00345180  4B D6 C1 59 */	bl update_fog__3CGXFUi
/* 80348224 00345184  B3 DF 00 56 */	sth r30, 0x56(r31)
/* 80348228 00345188  7F A4 EB 78 */	mr r4, r29
/* 8034822C 0034518C  7F 85 E3 78 */	mr r5, r28
/* 80348230 00345190  38 60 00 01 */	li r3, 1
/* 80348234 00345194  38 C0 00 00 */	li r6, 0
/* 80348238 00345198  48 03 3C 75 */	bl GXSetBlendMode
lbl_8034823C:
/* 8034823C 0034519C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80348240 003451A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80348244 003451A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80348248 003451A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034824C 003451AC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80348250 003451B0  7C 08 03 A6 */	mtlr r0
/* 80348254 003451B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80348258 003451B8  4E 80 00 20 */	blr

.global __sinit_CCubeMaterial_cpp
__sinit_CCubeMaterial_cpp:
/* 8034825C 003451BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80348260 003451C0  7C 08 02 A6 */	mflr r0
/* 80348264 003451C4  3C 60 80 4C */	lis r3, sTextureProjectionTransform@ha
/* 80348268 003451C8  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8034826C 003451CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80348270 003451D0  3C C0 80 4C */	lis r6, sPlayerPosition@ha
/* 80348274 003451D4  C0 02 CB DC */	lfs f0, lbl_805AE8FC@sda21(r2)
/* 80348278 003451D8  3C A0 80 5A */	lis r5, sViewingFrom__13CCubeMaterial@ha
/* 8034827C 003451DC  38 63 FF 5C */	addi r3, r3, sTextureProjectionTransform@l
/* 80348280 003451E0  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 80348284 003451E4  D4 06 FF 50 */	stfsu f0, sPlayerPosition@l(r6)
/* 80348288 003451E8  D4 05 67 B4 */	stfsu f0, sViewingFrom__13CCubeMaterial@l(r5)
/* 8034828C 003451EC  D0 06 00 04 */	stfs f0, 4(r6)
/* 80348290 003451F0  D0 06 00 08 */	stfs f0, 8(r6)
/* 80348294 003451F4  D0 05 00 04 */	stfs f0, 4(r5)
/* 80348298 003451F8  D0 05 00 08 */	stfs f0, 8(r5)
/* 8034829C 003451FC  4B FC A8 D9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 803482A0 00345200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803482A4 00345204  7C 08 03 A6 */	mtlr r0
/* 803482A8 00345208  38 21 00 10 */	addi r1, r1, 0x10
/* 803482AC 0034520C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AE8D8
lbl_805AE8D8:
	# ROM: 0x3FB178
	.4byte 0x000000FF

.global lbl_805AE8DC
lbl_805AE8DC:
	# ROM: 0x3FB17C
	.4byte 0xFFFFFFFF

.global lbl_805AE8E0
lbl_805AE8E0:
	# ROM: 0x3FB180
	.4byte 0xC0C0C0C0

.global lbl_805AE8E4
lbl_805AE8E4:
	# ROM: 0x3FB184
	.4byte 0x47C35000

.global lbl_805AE8E8
lbl_805AE8E8:
	# ROM: 0x3FB188
	.4byte 0x40860A92

.global lbl_805AE8EC
lbl_805AE8EC:
	# ROM: 0x3FB18C
	.4byte 0x447A0000

.global lbl_805AE8F0
lbl_805AE8F0:
	# ROM: 0x3FB190
	.double 1.0

.global lbl_805AE8F8
lbl_805AE8F8:
	# ROM: 0x3FB198
	.4byte 0x3D4CCCCD

.global lbl_805AE8FC
lbl_805AE8FC:
	# ROM: 0x3FB19C
	.4byte 0

.global lbl_805AE900
lbl_805AE900:
	# ROM: 0x3FB1A0
	.float 1.5

.global lbl_805AE904
lbl_805AE904:
	# ROM: 0x3FB1A4
	.4byte 0x3C75C28F

.global lbl_805AE908
lbl_805AE908:
	# ROM: 0x3FB1A8
	.float 1.0
	.4byte 0

.global lbl_805AE910
lbl_805AE910:
	# ROM: 0x3FB1B0
	.4byte 0x43300000
	.4byte 0

.global lbl_805AE918
lbl_805AE918:
	# ROM: 0x3FB1B8
	.float 1.1920929E-7

.global lbl_805AE91C
lbl_805AE91C:
	# ROM: 0x3FB1BC
	.float 0.5

.global lbl_805AE920
lbl_805AE920:
	# ROM: 0x3FB1C0
	.float 5.0

.global lbl_805AE924
lbl_805AE924:
	# ROM: 0x3FB1C4
	.4byte 0x3EA5294B

.global lbl_805AE928
lbl_805AE928:
	# ROM: 0x3FB1C8
	.float 0.02

.global lbl_805AE92C
lbl_805AE92C:
	# ROM: 0x3FB1CC
	.4byte 0x3CCCCCCD

.global lbl_805AE930
lbl_805AE930:
	# ROM: 0x3FB1D0
	.double 4.503601774854144E15


.section .rodata
.balign 8
.global lbl_803D7F58
lbl_803D7F58:
	# ROM: 0x3D4F58
	.float 0.5
	.4byte 0
	.4byte 0
	.float 0.5
	.4byte 0
	.4byte 0
	.float 0.5
	.float 0.5
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0

.global lbl_803D8048
lbl_803D8048:
	# ROM: 0x3D5048
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0

.global lbl_803D8078
lbl_803D8078:
	# ROM: 0x3D5078
	.float 0.5
	.4byte 0
	.4byte 0
	.float 0.5
	.4byte 0
	.4byte 0
	.float 0.5
	.float 0.5
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0

.global lbl_803D80A8
lbl_803D80A8:
	# ROM: 0x3D50A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0

