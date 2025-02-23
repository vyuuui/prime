.include "macros.inc"

.section .rodata
.balign 8
.global lbl_803D8750
lbl_803D8750:
	# ROM: 0x3D5750
	.4byte 0
	.4byte 0
	.4byte 0x80000000
	.4byte 0


.section .text, "ax"

.global __ieee754_fmod
__ieee754_fmod:
/* 80391DE8 0038ED48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80391DEC 0038ED4C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 80391DF0 0038ED50  D8 21 00 08 */	stfd f1, 8(r1)
/* 80391DF4 0038ED54  81 41 00 10 */	lwz r10, 0x10(r1)
/* 80391DF8 0038ED58  80 C1 00 08 */	lwz r6, 8(r1)
/* 80391DFC 0038ED5C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80391E00 0038ED60  55 48 00 7E */	clrlwi r8, r10, 1
/* 80391E04 0038ED64  54 C0 00 00 */	rlwinm r0, r6, 0, 0, 0
/* 80391E08 0038ED68  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80391E0C 0038ED6C  7D 03 2B 79 */	or. r3, r8, r5
/* 80391E10 0038ED70  7C C7 02 78 */	xor r7, r6, r0
/* 80391E14 0038ED74  41 82 00 28 */	beq lbl_80391E3C
/* 80391E18 0038ED78  3C C0 7F F0 */	lis r6, 0x7ff0
/* 80391E1C 0038ED7C  7C 07 30 00 */	cmpw r7, r6
/* 80391E20 0038ED80  40 80 00 1C */	bge lbl_80391E3C
/* 80391E24 0038ED84  7C 65 00 D0 */	neg r3, r5
/* 80391E28 0038ED88  7C A3 1B 78 */	or r3, r5, r3
/* 80391E2C 0038ED8C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80391E30 0038ED90  7D 03 1B 78 */	or r3, r8, r3
/* 80391E34 0038ED94  7C 03 30 40 */	cmplw r3, r6
/* 80391E38 0038ED98  40 81 00 18 */	ble lbl_80391E50
lbl_80391E3C:
/* 80391E3C 0038ED9C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80391E40 0038EDA0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80391E44 0038EDA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80391E48 0038EDA8  FC 20 00 24 */	fdiv f1, f0, f0
/* 80391E4C 0038EDAC  48 00 02 D0 */	b lbl_8039211C
lbl_80391E50:
/* 80391E50 0038EDB0  7C 07 40 00 */	cmpw r7, r8
/* 80391E54 0038EDB4  41 81 00 30 */	bgt lbl_80391E84
/* 80391E58 0038EDB8  41 80 00 0C */	blt lbl_80391E64
/* 80391E5C 0038EDBC  7C 04 28 40 */	cmplw r4, r5
/* 80391E60 0038EDC0  40 80 00 0C */	bge lbl_80391E6C
lbl_80391E64:
/* 80391E64 0038EDC4  C8 21 00 08 */	lfd f1, 8(r1)
/* 80391E68 0038EDC8  48 00 02 B4 */	b lbl_8039211C
lbl_80391E6C:
/* 80391E6C 0038EDCC  40 82 00 18 */	bne lbl_80391E84
/* 80391E70 0038EDD0  3C 60 80 3E */	lis r3, lbl_803D8750@ha
/* 80391E74 0038EDD4  54 00 27 38 */	rlwinm r0, r0, 4, 0x1c, 0x1c
/* 80391E78 0038EDD8  38 63 87 50 */	addi r3, r3, lbl_803D8750@l
/* 80391E7C 0038EDDC  7C 23 04 AE */	lfdx f1, r3, r0
/* 80391E80 0038EDE0  48 00 02 9C */	b lbl_8039211C
lbl_80391E84:
/* 80391E84 0038EDE4  3C 60 00 10 */	lis r3, 0x10
/* 80391E88 0038EDE8  7C 07 18 00 */	cmpw r7, r3
/* 80391E8C 0038EDEC  40 80 00 4C */	bge lbl_80391ED8
/* 80391E90 0038EDF0  2C 07 00 00 */	cmpwi r7, 0
/* 80391E94 0038EDF4  40 82 00 24 */	bne lbl_80391EB8
/* 80391E98 0038EDF8  7C 83 23 78 */	mr r3, r4
/* 80391E9C 0038EDFC  39 60 FB ED */	li r11, -1043
/* 80391EA0 0038EE00  48 00 00 0C */	b lbl_80391EAC
lbl_80391EA4:
/* 80391EA4 0038EE04  54 63 08 3C */	slwi r3, r3, 1
/* 80391EA8 0038EE08  39 6B FF FF */	addi r11, r11, -1
lbl_80391EAC:
/* 80391EAC 0038EE0C  2C 03 00 00 */	cmpwi r3, 0
/* 80391EB0 0038EE10  41 81 FF F4 */	bgt lbl_80391EA4
/* 80391EB4 0038EE14  48 00 00 2C */	b lbl_80391EE0
lbl_80391EB8:
/* 80391EB8 0038EE18  54 E3 58 28 */	slwi r3, r7, 0xb
/* 80391EBC 0038EE1C  39 60 FC 02 */	li r11, -1022
/* 80391EC0 0038EE20  48 00 00 0C */	b lbl_80391ECC
lbl_80391EC4:
/* 80391EC4 0038EE24  54 63 08 3C */	slwi r3, r3, 1
/* 80391EC8 0038EE28  39 6B FF FF */	addi r11, r11, -1
lbl_80391ECC:
/* 80391ECC 0038EE2C  2C 03 00 00 */	cmpwi r3, 0
/* 80391ED0 0038EE30  41 81 FF F4 */	bgt lbl_80391EC4
/* 80391ED4 0038EE34  48 00 00 0C */	b lbl_80391EE0
lbl_80391ED8:
/* 80391ED8 0038EE38  7C E3 A6 70 */	srawi r3, r7, 0x14
/* 80391EDC 0038EE3C  39 63 FC 01 */	addi r11, r3, -1023
lbl_80391EE0:
/* 80391EE0 0038EE40  3C 60 00 10 */	lis r3, 0x10
/* 80391EE4 0038EE44  7C 08 18 00 */	cmpw r8, r3
/* 80391EE8 0038EE48  40 80 00 4C */	bge lbl_80391F34
/* 80391EEC 0038EE4C  2C 08 00 00 */	cmpwi r8, 0
/* 80391EF0 0038EE50  40 82 00 24 */	bne lbl_80391F14
/* 80391EF4 0038EE54  7C A6 2B 78 */	mr r6, r5
/* 80391EF8 0038EE58  38 60 FB ED */	li r3, -1043
/* 80391EFC 0038EE5C  48 00 00 0C */	b lbl_80391F08
lbl_80391F00:
/* 80391F00 0038EE60  54 C6 08 3C */	slwi r6, r6, 1
/* 80391F04 0038EE64  38 63 FF FF */	addi r3, r3, -1
lbl_80391F08:
/* 80391F08 0038EE68  2C 06 00 00 */	cmpwi r6, 0
/* 80391F0C 0038EE6C  41 81 FF F4 */	bgt lbl_80391F00
/* 80391F10 0038EE70  48 00 00 2C */	b lbl_80391F3C
lbl_80391F14:
/* 80391F14 0038EE74  55 06 58 28 */	slwi r6, r8, 0xb
/* 80391F18 0038EE78  38 60 FC 02 */	li r3, -1022
/* 80391F1C 0038EE7C  48 00 00 0C */	b lbl_80391F28
lbl_80391F20:
/* 80391F20 0038EE80  54 C6 08 3C */	slwi r6, r6, 1
/* 80391F24 0038EE84  38 63 FF FF */	addi r3, r3, -1
lbl_80391F28:
/* 80391F28 0038EE88  2C 06 00 00 */	cmpwi r6, 0
/* 80391F2C 0038EE8C  41 81 FF F4 */	bgt lbl_80391F20
/* 80391F30 0038EE90  48 00 00 0C */	b lbl_80391F3C
lbl_80391F34:
/* 80391F34 0038EE94  7D 03 A6 70 */	srawi r3, r8, 0x14
/* 80391F38 0038EE98  38 63 FC 01 */	addi r3, r3, -1023
lbl_80391F3C:
/* 80391F3C 0038EE9C  2C 0B FC 02 */	cmpwi r11, -1022
/* 80391F40 0038EEA0  41 80 00 10 */	blt lbl_80391F50
/* 80391F44 0038EEA4  54 E6 03 3E */	clrlwi r6, r7, 0xc
/* 80391F48 0038EEA8  64 C9 00 10 */	oris r9, r6, 0x10
/* 80391F4C 0038EEAC  48 00 00 34 */	b lbl_80391F80
lbl_80391F50:
/* 80391F50 0038EEB0  21 2B FC 02 */	subfic r9, r11, -1022
/* 80391F54 0038EEB4  2C 09 00 1F */	cmpwi r9, 0x1f
/* 80391F58 0038EEB8  41 81 00 1C */	bgt lbl_80391F74
/* 80391F5C 0038EEBC  20 C9 00 20 */	subfic r6, r9, 0x20
/* 80391F60 0038EEC0  7C E7 48 30 */	slw r7, r7, r9
/* 80391F64 0038EEC4  7C 86 34 30 */	srw r6, r4, r6
/* 80391F68 0038EEC8  7C 84 48 30 */	slw r4, r4, r9
/* 80391F6C 0038EECC  7C E9 33 78 */	or r9, r7, r6
/* 80391F70 0038EED0  48 00 00 10 */	b lbl_80391F80
lbl_80391F74:
/* 80391F74 0038EED4  38 C9 FF E0 */	addi r6, r9, -32
/* 80391F78 0038EED8  7C 89 30 30 */	slw r9, r4, r6
/* 80391F7C 0038EEDC  38 80 00 00 */	li r4, 0
lbl_80391F80:
/* 80391F80 0038EEE0  2C 03 FC 02 */	cmpwi r3, -1022
/* 80391F84 0038EEE4  41 80 00 10 */	blt lbl_80391F94
/* 80391F88 0038EEE8  55 46 03 3E */	clrlwi r6, r10, 0xc
/* 80391F8C 0038EEEC  64 C7 00 10 */	oris r7, r6, 0x10
/* 80391F90 0038EEF0  48 00 00 34 */	b lbl_80391FC4
lbl_80391F94:
/* 80391F94 0038EEF4  21 43 FC 02 */	subfic r10, r3, -1022
/* 80391F98 0038EEF8  2C 0A 00 1F */	cmpwi r10, 0x1f
/* 80391F9C 0038EEFC  41 81 00 1C */	bgt lbl_80391FB8
/* 80391FA0 0038EF00  20 CA 00 20 */	subfic r6, r10, 0x20
/* 80391FA4 0038EF04  7D 07 50 30 */	slw r7, r8, r10
/* 80391FA8 0038EF08  7C A6 34 30 */	srw r6, r5, r6
/* 80391FAC 0038EF0C  7C A5 50 30 */	slw r5, r5, r10
/* 80391FB0 0038EF10  7C E7 33 78 */	or r7, r7, r6
/* 80391FB4 0038EF14  48 00 00 10 */	b lbl_80391FC4
lbl_80391FB8:
/* 80391FB8 0038EF18  38 CA FF E0 */	addi r6, r10, -32
/* 80391FBC 0038EF1C  7C A7 30 30 */	slw r7, r5, r6
/* 80391FC0 0038EF20  38 A0 00 00 */	li r5, 0
lbl_80391FC4:
/* 80391FC4 0038EF24  7C C3 58 51 */	subf. r6, r3, r11
/* 80391FC8 0038EF28  7C C9 03 A6 */	mtctr r6
/* 80391FCC 0038EF2C  41 82 00 64 */	beq lbl_80392030
lbl_80391FD0:
/* 80391FD0 0038EF30  7C 04 28 40 */	cmplw r4, r5
/* 80391FD4 0038EF34  7D 07 48 50 */	subf r8, r7, r9
/* 80391FD8 0038EF38  7D 45 20 50 */	subf r10, r5, r4
/* 80391FDC 0038EF3C  40 80 00 08 */	bge lbl_80391FE4
/* 80391FE0 0038EF40  39 08 FF FF */	addi r8, r8, -1
lbl_80391FE4:
/* 80391FE4 0038EF44  2C 08 00 00 */	cmpwi r8, 0
/* 80391FE8 0038EF48  40 80 00 18 */	bge lbl_80392000
/* 80391FEC 0038EF4C  54 86 0F FE */	srwi r6, r4, 0x1f
/* 80391FF0 0038EF50  7C 84 22 14 */	add r4, r4, r4
/* 80391FF4 0038EF54  7C C9 32 14 */	add r6, r9, r6
/* 80391FF8 0038EF58  7D 29 32 14 */	add r9, r9, r6
/* 80391FFC 0038EF5C  48 00 00 30 */	b lbl_8039202C
lbl_80392000:
/* 80392000 0038EF60  7D 04 53 79 */	or. r4, r8, r10
/* 80392004 0038EF64  40 82 00 18 */	bne lbl_8039201C
/* 80392008 0038EF68  3C 60 80 3E */	lis r3, lbl_803D8750@ha
/* 8039200C 0038EF6C  54 00 27 38 */	rlwinm r0, r0, 4, 0x1c, 0x1c
/* 80392010 0038EF70  38 63 87 50 */	addi r3, r3, lbl_803D8750@l
/* 80392014 0038EF74  7C 23 04 AE */	lfdx f1, r3, r0
/* 80392018 0038EF78  48 00 01 04 */	b lbl_8039211C
lbl_8039201C:
/* 8039201C 0038EF7C  55 46 0F FE */	srwi r6, r10, 0x1f
/* 80392020 0038EF80  7C 8A 52 14 */	add r4, r10, r10
/* 80392024 0038EF84  7D 28 32 14 */	add r9, r8, r6
/* 80392028 0038EF88  7D 28 4A 14 */	add r9, r8, r9
lbl_8039202C:
/* 8039202C 0038EF8C  42 00 FF A4 */	bdnz lbl_80391FD0
lbl_80392030:
/* 80392030 0038EF90  7C 04 28 40 */	cmplw r4, r5
/* 80392034 0038EF94  7C C7 48 50 */	subf r6, r7, r9
/* 80392038 0038EF98  7C A5 20 50 */	subf r5, r5, r4
/* 8039203C 0038EF9C  40 80 00 08 */	bge lbl_80392044
/* 80392040 0038EFA0  38 C6 FF FF */	addi r6, r6, -1
lbl_80392044:
/* 80392044 0038EFA4  2C 06 00 00 */	cmpwi r6, 0
/* 80392048 0038EFA8  41 80 00 0C */	blt lbl_80392054
/* 8039204C 0038EFAC  7C C9 33 78 */	mr r9, r6
/* 80392050 0038EFB0  7C A4 2B 78 */	mr r4, r5
lbl_80392054:
/* 80392054 0038EFB4  7D 25 23 79 */	or. r5, r9, r4
/* 80392058 0038EFB8  40 82 00 18 */	bne lbl_80392070
/* 8039205C 0038EFBC  3C 60 80 3E */	lis r3, lbl_803D8750@ha
/* 80392060 0038EFC0  54 00 27 38 */	rlwinm r0, r0, 4, 0x1c, 0x1c
/* 80392064 0038EFC4  38 63 87 50 */	addi r3, r3, lbl_803D8750@l
/* 80392068 0038EFC8  7C 23 04 AE */	lfdx f1, r3, r0
/* 8039206C 0038EFCC  48 00 00 B0 */	b lbl_8039211C
lbl_80392070:
/* 80392070 0038EFD0  3C A0 00 10 */	lis r5, 0x10
/* 80392074 0038EFD4  48 00 00 18 */	b lbl_8039208C
lbl_80392078:
/* 80392078 0038EFD8  54 86 0F FE */	srwi r6, r4, 0x1f
/* 8039207C 0038EFDC  7C 84 22 14 */	add r4, r4, r4
/* 80392080 0038EFE0  7C C9 32 14 */	add r6, r9, r6
/* 80392084 0038EFE4  38 63 FF FF */	addi r3, r3, -1
/* 80392088 0038EFE8  7D 29 32 14 */	add r9, r9, r6
lbl_8039208C:
/* 8039208C 0038EFEC  7C 09 28 00 */	cmpw r9, r5
/* 80392090 0038EFF0  41 80 FF E8 */	blt lbl_80392078
/* 80392094 0038EFF4  2C 03 FC 02 */	cmpwi r3, -1022
/* 80392098 0038EFF8  41 80 00 24 */	blt lbl_803920BC
/* 8039209C 0038EFFC  38 63 03 FF */	addi r3, r3, 0x3ff
/* 803920A0 0038F000  3C A9 FF F0 */	addis r5, r9, 0xfff0
/* 803920A4 0038F004  54 63 A0 16 */	slwi r3, r3, 0x14
/* 803920A8 0038F008  90 81 00 0C */	stw r4, 0xc(r1)
/* 803920AC 0038F00C  7C A3 1B 78 */	or r3, r5, r3
/* 803920B0 0038F010  7C 60 03 78 */	or r0, r3, r0
/* 803920B4 0038F014  90 01 00 08 */	stw r0, 8(r1)
/* 803920B8 0038F018  48 00 00 60 */	b lbl_80392118
lbl_803920BC:
/* 803920BC 0038F01C  20 C3 FC 02 */	subfic r6, r3, -1022
/* 803920C0 0038F020  2C 06 00 14 */	cmpwi r6, 0x14
/* 803920C4 0038F024  41 81 00 1C */	bgt lbl_803920E0
/* 803920C8 0038F028  20 66 00 20 */	subfic r3, r6, 0x20
/* 803920CC 0038F02C  7C 84 34 30 */	srw r4, r4, r6
/* 803920D0 0038F030  7D 23 18 30 */	slw r3, r9, r3
/* 803920D4 0038F034  7D 29 36 30 */	sraw r9, r9, r6
/* 803920D8 0038F038  7C 83 1B 78 */	or r3, r4, r3
/* 803920DC 0038F03C  48 00 00 30 */	b lbl_8039210C
lbl_803920E0:
/* 803920E0 0038F040  2C 06 00 1F */	cmpwi r6, 0x1f
/* 803920E4 0038F044  41 81 00 1C */	bgt lbl_80392100
/* 803920E8 0038F048  20 A6 00 20 */	subfic r5, r6, 0x20
/* 803920EC 0038F04C  7C 83 34 30 */	srw r3, r4, r6
/* 803920F0 0038F050  7D 24 28 30 */	slw r4, r9, r5
/* 803920F4 0038F054  7C 09 03 78 */	mr r9, r0
/* 803920F8 0038F058  7C 83 1B 78 */	or r3, r4, r3
/* 803920FC 0038F05C  48 00 00 10 */	b lbl_8039210C
lbl_80392100:
/* 80392100 0038F060  38 66 FF E0 */	addi r3, r6, -32
/* 80392104 0038F064  7D 23 1E 30 */	sraw r3, r9, r3
/* 80392108 0038F068  7C 09 03 78 */	mr r9, r0
lbl_8039210C:
/* 8039210C 0038F06C  7D 20 03 78 */	or r0, r9, r0
/* 80392110 0038F070  90 61 00 0C */	stw r3, 0xc(r1)
/* 80392114 0038F074  90 01 00 08 */	stw r0, 8(r1)
lbl_80392118:
/* 80392118 0038F078  C8 21 00 08 */	lfd f1, 8(r1)
lbl_8039211C:
/* 8039211C 0038F07C  38 21 00 20 */	addi r1, r1, 0x20
/* 80392120 0038F080  4E 80 00 20 */	blr
