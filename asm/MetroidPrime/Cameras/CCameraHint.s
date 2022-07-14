.include "macros.inc"

.section .data

.global lbl_803DF6F4
lbl_803DF6F4:
	# ROM: 0x3DC6F4
	.4byte 0
	.4byte 0
	.4byte __dt__11CCameraHintFv

.section .text, "ax"

.global __dt__11CCameraHintFv
__dt__11CCameraHintFv:
/* 800C518C 000C20EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C5190 000C20F0  7C 08 02 A6 */	mflr r0
/* 800C5194 000C20F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C5198 000C20F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C519C 000C20FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C51A0 000C2100  41 82 00 1C */	beq lbl_800C51BC
/* 800C51A4 000C2104  3C A0 80 3E */	lis r5, lbl_803DF6F4@ha
/* 800C51A8 000C2108  7C 80 07 35 */	extsh. r0, r4
/* 800C51AC 000C210C  38 05 F6 F4 */	addi r0, r5, lbl_803DF6F4@l
/* 800C51B0 000C2110  90 1F 00 00 */	stw r0, 0(r31)
/* 800C51B4 000C2114  40 81 00 08 */	ble lbl_800C51BC
/* 800C51B8 000C2118  48 25 07 79 */	bl Free__7CMemoryFPCv
lbl_800C51BC:
/* 800C51BC 000C211C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C51C0 000C2120  7F E3 FB 78 */	mr r3, r31
/* 800C51C4 000C2124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C51C8 000C2128  7C 08 03 A6 */	mtlr r0
/* 800C51CC 000C212C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C51D0 000C2130  4E 80 00 20 */	blr

.global __ct__11CCameraHintFiQ211CBallCamera20EBallCameraBehaviourfffRC9CVector3fRC9CVector3fRC9CVector3fffffffffff
__ct__11CCameraHintFiQ211CBallCamera20EBallCameraBehaviourfffRC9CVector3fRC9CVector3fRC9CVector3fffffffffff:
/* 800C51D4 000C2134  3D 20 80 3E */	lis r9, lbl_803DF6F4@ha
/* 800C51D8 000C2138  C1 A1 00 08 */	lfs f13, 8(r1)
/* 800C51DC 000C213C  38 09 F6 F4 */	addi r0, r9, lbl_803DF6F4@l
/* 800C51E0 000C2140  C1 81 00 0C */	lfs f12, 0xc(r1)
/* 800C51E4 000C2144  90 03 00 00 */	stw r0, 0(r3)
/* 800C51E8 000C2148  C1 61 00 10 */	lfs f11, 0x10(r1)
/* 800C51EC 000C214C  90 83 00 04 */	stw r4, 4(r3)
/* 800C51F0 000C2150  C1 41 00 14 */	lfs f10, 0x14(r1)
/* 800C51F4 000C2154  90 A3 00 08 */	stw r5, 8(r3)
/* 800C51F8 000C2158  C1 21 00 18 */	lfs f9, 0x18(r1)
/* 800C51FC 000C215C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 800C5200 000C2160  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 800C5204 000C2164  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 800C5208 000C2168  C0 06 00 00 */	lfs f0, 0(r6)
/* 800C520C 000C216C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800C5210 000C2170  C0 06 00 04 */	lfs f0, 4(r6)
/* 800C5214 000C2174  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800C5218 000C2178  C0 06 00 08 */	lfs f0, 8(r6)
/* 800C521C 000C217C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 800C5220 000C2180  C0 07 00 00 */	lfs f0, 0(r7)
/* 800C5224 000C2184  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 800C5228 000C2188  C0 07 00 04 */	lfs f0, 4(r7)
/* 800C522C 000C218C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 800C5230 000C2190  C0 07 00 08 */	lfs f0, 8(r7)
/* 800C5234 000C2194  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 800C5238 000C2198  C0 08 00 00 */	lfs f0, 0(r8)
/* 800C523C 000C219C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 800C5240 000C21A0  C0 08 00 04 */	lfs f0, 4(r8)
/* 800C5244 000C21A4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 800C5248 000C21A8  C0 08 00 08 */	lfs f0, 8(r8)
/* 800C524C 000C21AC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 800C5250 000C21B0  D0 83 00 3C */	stfs f4, 0x3c(r3)
/* 800C5254 000C21B4  D0 A3 00 40 */	stfs f5, 0x40(r3)
/* 800C5258 000C21B8  D0 C3 00 44 */	stfs f6, 0x44(r3)
/* 800C525C 000C21BC  D0 E3 00 48 */	stfs f7, 0x48(r3)
/* 800C5260 000C21C0  D1 03 00 4C */	stfs f8, 0x4c(r3)
/* 800C5264 000C21C4  D1 A3 00 50 */	stfs f13, 0x50(r3)
/* 800C5268 000C21C8  D1 83 00 54 */	stfs f12, 0x54(r3)
/* 800C526C 000C21CC  D1 63 00 58 */	stfs f11, 0x58(r3)
/* 800C5270 000C21D0  D1 43 00 5C */	stfs f10, 0x5c(r3)
/* 800C5274 000C21D4  D1 23 00 60 */	stfs f9, 0x60(r3)
/* 800C5278 000C21D8  4E 80 00 20 */	blr
