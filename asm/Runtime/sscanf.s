.include "macros.inc"

.section .text, "ax"

.global __StringRead
__StringRead:
/* 8038FE9C 0038CDFC  2C 05 00 01 */	cmpwi r5, 1
/* 8038FEA0 0038CE00  7C 66 1B 78 */	mr r6, r3
/* 8038FEA4 0038CE04  41 82 00 4C */	beq lbl_8038FEF0
/* 8038FEA8 0038CE08  40 80 00 10 */	bge lbl_8038FEB8
/* 8038FEAC 0038CE0C  2C 05 00 00 */	cmpwi r5, 0
/* 8038FEB0 0038CE10  40 80 00 14 */	bge lbl_8038FEC4
/* 8038FEB4 0038CE14  48 00 00 70 */	b lbl_8038FF24
lbl_8038FEB8:
/* 8038FEB8 0038CE18  2C 05 00 03 */	cmpwi r5, 3
/* 8038FEBC 0038CE1C  40 80 00 68 */	bge lbl_8038FF24
/* 8038FEC0 0038CE20  48 00 00 5C */	b lbl_8038FF1C
lbl_8038FEC4:
/* 8038FEC4 0038CE24  80 86 00 00 */	lwz r4, 0(r6)
/* 8038FEC8 0038CE28  88 64 00 00 */	lbz r3, 0(r4)
/* 8038FECC 0038CE2C  7C 60 07 75 */	extsb. r0, r3
/* 8038FED0 0038CE30  40 82 00 14 */	bne lbl_8038FEE4
/* 8038FED4 0038CE34  38 00 00 01 */	li r0, 1
/* 8038FED8 0038CE38  38 60 FF FF */	li r3, -1
/* 8038FEDC 0038CE3C  90 06 00 04 */	stw r0, 4(r6)
/* 8038FEE0 0038CE40  4E 80 00 20 */	blr
lbl_8038FEE4:
/* 8038FEE4 0038CE44  38 04 00 01 */	addi r0, r4, 1
/* 8038FEE8 0038CE48  90 06 00 00 */	stw r0, 0(r6)
/* 8038FEEC 0038CE4C  4E 80 00 20 */	blr
lbl_8038FEF0:
/* 8038FEF0 0038CE50  80 06 00 04 */	lwz r0, 4(r6)
/* 8038FEF4 0038CE54  2C 00 00 00 */	cmpwi r0, 0
/* 8038FEF8 0038CE58  40 82 00 14 */	bne lbl_8038FF0C
/* 8038FEFC 0038CE5C  80 66 00 00 */	lwz r3, 0(r6)
/* 8038FF00 0038CE60  38 03 FF FF */	addi r0, r3, -1
/* 8038FF04 0038CE64  90 06 00 00 */	stw r0, 0(r6)
/* 8038FF08 0038CE68  48 00 00 0C */	b lbl_8038FF14
lbl_8038FF0C:
/* 8038FF0C 0038CE6C  38 00 00 00 */	li r0, 0
/* 8038FF10 0038CE70  90 06 00 04 */	stw r0, 4(r6)
lbl_8038FF14:
/* 8038FF14 0038CE74  7C 83 23 78 */	mr r3, r4
/* 8038FF18 0038CE78  4E 80 00 20 */	blr
lbl_8038FF1C:
/* 8038FF1C 0038CE7C  80 66 00 04 */	lwz r3, 4(r6)
/* 8038FF20 0038CE80  4E 80 00 20 */	blr
lbl_8038FF24:
/* 8038FF24 0038CE84  38 60 00 00 */	li r3, 0
/* 8038FF28 0038CE88  4E 80 00 20 */	blr
