.include "macros.inc"

.section .sdata2
.global lbl_805AEC00
lbl_805AEC00:
	.incbin "baserom.dol", 0x3FB4A0, 0x4
.global lbl_805AEC04
lbl_805AEC04:
	.incbin "baserom.dol", 0x3FB4A4, 0x4
.global lbl_805AEC08
lbl_805AEC08:
	.incbin "baserom.dol", 0x3FB4A8, 0x4
.global lbl_805AEC0C
lbl_805AEC0C:
	.incbin "baserom.dol", 0x3FB4AC, 0x4

.section .text, "ax"

.global C_MTXFrustum
C_MTXFrustum:
/* 8037D51C 0037A47C  ED 24 18 28 */	fsubs f9, f4, f3
/* 8037D520 0037A480  C1 42 CE E0 */	lfs f10, lbl_805AEC00@sda21(r2)
/* 8037D524 0037A484  EC 01 10 28 */	fsubs f0, f1, f2
/* 8037D528 0037A488  C1 02 CE E4 */	lfs f8, lbl_805AEC04@sda21(r2)
/* 8037D52C 0037A48C  EC E6 28 28 */	fsubs f7, f6, f5
/* 8037D530 0037A490  ED 6A 48 24 */	fdivs f11, f10, f9
/* 8037D534 0037A494  ED 08 01 72 */	fmuls f8, f8, f5
/* 8037D538 0037A498  ED 2A 00 24 */	fdivs f9, f10, f0
/* 8037D53C 0037A49C  EC 08 02 F2 */	fmuls f0, f8, f11
/* 8037D540 0037A4A0  EC 64 18 2A */	fadds f3, f4, f3
/* 8037D544 0037A4A4  EC 41 10 2A */	fadds f2, f1, f2
/* 8037D548 0037A4A8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8037D54C 0037A4AC  EC 06 01 72 */	fmuls f0, f6, f5
/* 8037D550 0037A4B0  EC CA 38 24 */	fdivs f6, f10, f7
/* 8037D554 0037A4B4  C0 82 CE E8 */	lfs f4, lbl_805AEC08@sda21(r2)
/* 8037D558 0037A4B8  D0 83 00 04 */	stfs f4, 4(r3)
/* 8037D55C 0037A4BC  EC 6B 00 F2 */	fmuls f3, f11, f3
/* 8037D560 0037A4C0  FC 20 28 50 */	fneg f1, f5
/* 8037D564 0037A4C4  FC 00 00 50 */	fneg f0, f0
/* 8037D568 0037A4C8  D0 63 00 08 */	stfs f3, 8(r3)
/* 8037D56C 0037A4CC  EC 68 02 72 */	fmuls f3, f8, f9
/* 8037D570 0037A4D0  EC 49 00 B2 */	fmuls f2, f9, f2
/* 8037D574 0037A4D4  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 8037D578 0037A4D8  EC 21 01 B2 */	fmuls f1, f1, f6
/* 8037D57C 0037A4DC  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 8037D580 0037A4E0  EC 06 00 32 */	fmuls f0, f6, f0
/* 8037D584 0037A4E4  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 8037D588 0037A4E8  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8037D58C 0037A4EC  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 8037D590 0037A4F0  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 8037D594 0037A4F4  D0 83 00 24 */	stfs f4, 0x24(r3)
/* 8037D598 0037A4F8  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8037D59C 0037A4FC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8037D5A0 0037A500  D0 83 00 30 */	stfs f4, 0x30(r3)
/* 8037D5A4 0037A504  D0 83 00 34 */	stfs f4, 0x34(r3)
/* 8037D5A8 0037A508  C0 02 CE EC */	lfs f0, lbl_805AEC0C@sda21(r2)
/* 8037D5AC 0037A50C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8037D5B0 0037A510  D0 83 00 3C */	stfs f4, 0x3c(r3)
/* 8037D5B4 0037A514  4E 80 00 20 */	blr 

.global C_MTXOrtho
C_MTXOrtho:
/* 8037D5B8 0037A518  ED 04 18 28 */	fsubs f8, f4, f3
/* 8037D5BC 0037A51C  C1 22 CE E0 */	lfs f9, lbl_805AEC00@sda21(r2)
/* 8037D5C0 0037A520  EC 01 10 28 */	fsubs f0, f1, f2
/* 8037D5C4 0037A524  C0 E2 CE E4 */	lfs f7, lbl_805AEC04@sda21(r2)
/* 8037D5C8 0037A528  EC 64 18 2A */	fadds f3, f4, f3
/* 8037D5CC 0037A52C  ED 49 40 24 */	fdivs f10, f9, f8
/* 8037D5D0 0037A530  ED 09 00 24 */	fdivs f8, f9, f0
/* 8037D5D4 0037A534  EC 87 02 B2 */	fmuls f4, f7, f10
/* 8037D5D8 0037A538  FC 60 18 50 */	fneg f3, f3
/* 8037D5DC 0037A53C  EC 06 28 28 */	fsubs f0, f6, f5
/* 8037D5E0 0037A540  D0 83 00 00 */	stfs f4, 0(r3)
/* 8037D5E4 0037A544  EC 21 10 2A */	fadds f1, f1, f2
/* 8037D5E8 0037A548  EC 4A 00 F2 */	fmuls f2, f10, f3
/* 8037D5EC 0037A54C  C0 62 CE E8 */	lfs f3, lbl_805AEC08@sda21(r2)
/* 8037D5F0 0037A550  FC 20 08 50 */	fneg f1, f1
/* 8037D5F4 0037A554  D0 63 00 04 */	stfs f3, 4(r3)
/* 8037D5F8 0037A558  EC 89 00 24 */	fdivs f4, f9, f0
/* 8037D5FC 0037A55C  D0 63 00 08 */	stfs f3, 8(r3)
/* 8037D600 0037A560  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8037D604 0037A564  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 8037D608 0037A568  EC 47 02 32 */	fmuls f2, f7, f8
/* 8037D60C 0037A56C  FC 00 30 50 */	fneg f0, f6
/* 8037D610 0037A570  EC 28 00 72 */	fmuls f1, f8, f1
/* 8037D614 0037A574  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8037D618 0037A578  EC 00 01 32 */	fmuls f0, f0, f4
/* 8037D61C 0037A57C  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8037D620 0037A580  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8037D624 0037A584  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8037D628 0037A588  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 8037D62C 0037A58C  C0 22 CE EC */	lfs f1, lbl_805AEC0C@sda21(r2)
/* 8037D630 0037A590  EC 21 01 32 */	fmuls f1, f1, f4
/* 8037D634 0037A594  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8037D638 0037A598  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8037D63C 0037A59C  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 8037D640 0037A5A0  D0 63 00 34 */	stfs f3, 0x34(r3)
/* 8037D644 0037A5A4  D0 63 00 38 */	stfs f3, 0x38(r3)
/* 8037D648 0037A5A8  D1 23 00 3C */	stfs f9, 0x3c(r3)
/* 8037D64C 0037A5AC  4E 80 00 20 */	blr 
