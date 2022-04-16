.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global GetPlane__17CCollisionSurfaceCFv
GetPlane__17CCollisionSurfaceCFv:
/* 802A2634 0029F594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A2638 0029F598  7C 08 02 A6 */	mflr r0
/* 802A263C 0029F59C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A2640 0029F5A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A2644 0029F5A4  7C 9F 23 78 */	mr r31, r4
/* 802A2648 0029F5A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A264C 0029F5AC  7C 7E 1B 78 */	mr r30, r3
/* 802A2650 0029F5B0  38 61 00 08 */	addi r3, r1, 8
/* 802A2654 0029F5B4  48 00 00 51 */	bl GetNormal__17CCollisionSurfaceCFv
/* 802A2658 0029F5B8  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 802A265C 0029F5BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802A2660 0029F5C0  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 802A2664 0029F5C4  EC 03 00 32 */	fmuls f0, f3, f0
/* 802A2668 0029F5C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 802A266C 0029F5CC  C0 A1 00 08 */	lfs f5, 8(r1)
/* 802A2670 0029F5D0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802A2674 0029F5D4  D0 BE 00 00 */	stfs f5, 0(r30)
/* 802A2678 0029F5D8  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 802A267C 0029F5DC  D0 7E 00 04 */	stfs f3, 4(r30)
/* 802A2680 0029F5E0  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 802A2684 0029F5E4  D0 9E 00 08 */	stfs f4, 8(r30)
/* 802A2688 0029F5E8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 802A268C 0029F5EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A2690 0029F5F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A2694 0029F5F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A2698 0029F5F8  7C 08 03 A6 */	mtlr r0
/* 802A269C 0029F5FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A26A0 0029F600  4E 80 00 20 */	blr 

.global GetNormal__17CCollisionSurfaceCFv
GetNormal__17CCollisionSurfaceCFv:
/* 802A26A4 0029F604  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A26A8 0029F608  7C 08 02 A6 */	mflr r0
/* 802A26AC 0029F60C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A26B0 0029F610  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 802A26B4 0029F614  C0 64 00 00 */	lfs f3, 0(r4)
/* 802A26B8 0029F618  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802A26BC 0029F61C  EC A2 18 28 */	fsubs f5, f2, f3
/* 802A26C0 0029F620  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802A26C4 0029F624  C0 44 00 04 */	lfs f2, 4(r4)
/* 802A26C8 0029F628  ED 00 18 28 */	fsubs f8, f0, f3
/* 802A26CC 0029F62C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802A26D0 0029F630  EC 81 10 28 */	fsubs f4, f1, f2
/* 802A26D4 0029F634  EC E0 10 28 */	fsubs f7, f0, f2
/* 802A26D8 0029F638  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 802A26DC 0029F63C  C0 C4 00 08 */	lfs f6, 8(r4)
/* 802A26E0 0029F640  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 802A26E4 0029F644  38 81 00 08 */	addi r4, r1, 8
/* 802A26E8 0029F648  EC 61 30 28 */	fsubs f3, f1, f6
/* 802A26EC 0029F64C  EC C0 30 28 */	fsubs f6, f0, f6
/* 802A26F0 0029F650  EC 08 01 32 */	fmuls f0, f8, f4
/* 802A26F4 0029F654  EC 47 00 F2 */	fmuls f2, f7, f3
/* 802A26F8 0029F658  EC 26 01 72 */	fmuls f1, f6, f5
/* 802A26FC 0029F65C  EC 05 01 F8 */	fmsubs f0, f5, f7, f0
/* 802A2700 0029F660  EC 44 11 B8 */	fmsubs f2, f4, f6, f2
/* 802A2704 0029F664  EC 23 0A 38 */	fmsubs f1, f3, f8, f1
/* 802A2708 0029F668  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802A270C 0029F66C  D0 41 00 08 */	stfs f2, 8(r1)
/* 802A2710 0029F670  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802A2714 0029F674  48 07 16 BD */	bl __ct__11CUnitVectorFRC9CVector3f
/* 802A2718 0029F678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A271C 0029F67C  7C 08 03 A6 */	mtlr r0
/* 802A2720 0029F680  38 21 00 20 */	addi r1, r1, 0x20
/* 802A2724 0029F684  4E 80 00 20 */	blr 

.global __ct__17CCollisionSurfaceFRC9CVector3fRC9CVector3fRC9CVector3fUi
__ct__17CCollisionSurfaceFRC9CVector3fRC9CVector3fRC9CVector3fUi:
/* 802A2728 0029F688  C0 04 00 00 */	lfs f0, 0(r4)
/* 802A272C 0029F68C  D0 03 00 00 */	stfs f0, 0(r3)
/* 802A2730 0029F690  C0 04 00 04 */	lfs f0, 4(r4)
/* 802A2734 0029F694  D0 03 00 04 */	stfs f0, 4(r3)
/* 802A2738 0029F698  C0 04 00 08 */	lfs f0, 8(r4)
/* 802A273C 0029F69C  D0 03 00 08 */	stfs f0, 8(r3)
/* 802A2740 0029F6A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 802A2744 0029F6A4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802A2748 0029F6A8  C0 05 00 04 */	lfs f0, 4(r5)
/* 802A274C 0029F6AC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802A2750 0029F6B0  C0 05 00 08 */	lfs f0, 8(r5)
/* 802A2754 0029F6B4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802A2758 0029F6B8  C0 06 00 00 */	lfs f0, 0(r6)
/* 802A275C 0029F6BC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802A2760 0029F6C0  C0 06 00 04 */	lfs f0, 4(r6)
/* 802A2764 0029F6C4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802A2768 0029F6C8  C0 06 00 08 */	lfs f0, 8(r6)
/* 802A276C 0029F6CC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802A2770 0029F6D0  90 E3 00 24 */	stw r7, 0x24(r3)
/* 802A2774 0029F6D4  4E 80 00 20 */	blr