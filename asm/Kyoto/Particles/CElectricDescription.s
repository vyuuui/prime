.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__20CElectricDescriptionFv
__dt__20CElectricDescriptionFv:
/* 803667B8 00363718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803667BC 0036371C  7C 08 02 A6 */	mflr r0
/* 803667C0 00363720  90 01 00 14 */	stw r0, 0x14(r1)
/* 803667C4 00363724  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803667C8 00363728  7C 7F 1B 79 */	or. r31, r3, r3
/* 803667CC 0036372C  93 C1 00 08 */	stw r30, 8(r1)
/* 803667D0 00363730  7C 9E 23 78 */	mr r30, r4
/* 803667D4 00363734  41 82 02 B0 */	beq lbl_80366A84
/* 803667D8 00363738  80 7F 00 00 */	lwz r3, 0(r31)
/* 803667DC 0036373C  28 03 00 00 */	cmplwi r3, 0
/* 803667E0 00363740  41 82 00 18 */	beq lbl_803667F8
/* 803667E4 00363744  81 83 00 00 */	lwz r12, 0(r3)
/* 803667E8 00363748  38 80 00 01 */	li r4, 1
/* 803667EC 0036374C  81 8C 00 08 */	lwz r12, 8(r12)
/* 803667F0 00363750  7D 89 03 A6 */	mtctr r12
/* 803667F4 00363754  4E 80 04 21 */	bctrl 
lbl_803667F8:
/* 803667F8 00363758  80 7F 00 04 */	lwz r3, 4(r31)
/* 803667FC 0036375C  28 03 00 00 */	cmplwi r3, 0
/* 80366800 00363760  41 82 00 18 */	beq lbl_80366818
/* 80366804 00363764  81 83 00 00 */	lwz r12, 0(r3)
/* 80366808 00363768  38 80 00 01 */	li r4, 1
/* 8036680C 0036376C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366810 00363770  7D 89 03 A6 */	mtctr r12
/* 80366814 00363774  4E 80 04 21 */	bctrl 
lbl_80366818:
/* 80366818 00363778  80 7F 00 08 */	lwz r3, 8(r31)
/* 8036681C 0036377C  28 03 00 00 */	cmplwi r3, 0
/* 80366820 00363780  41 82 00 18 */	beq lbl_80366838
/* 80366824 00363784  81 83 00 00 */	lwz r12, 0(r3)
/* 80366828 00363788  38 80 00 01 */	li r4, 1
/* 8036682C 0036378C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366830 00363790  7D 89 03 A6 */	mtctr r12
/* 80366834 00363794  4E 80 04 21 */	bctrl 
lbl_80366838:
/* 80366838 00363798  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8036683C 0036379C  28 03 00 00 */	cmplwi r3, 0
/* 80366840 003637A0  41 82 00 18 */	beq lbl_80366858
/* 80366844 003637A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80366848 003637A8  38 80 00 01 */	li r4, 1
/* 8036684C 003637AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366850 003637B0  7D 89 03 A6 */	mtctr r12
/* 80366854 003637B4  4E 80 04 21 */	bctrl 
lbl_80366858:
/* 80366858 003637B8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8036685C 003637BC  28 03 00 00 */	cmplwi r3, 0
/* 80366860 003637C0  41 82 00 18 */	beq lbl_80366878
/* 80366864 003637C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80366868 003637C8  38 80 00 01 */	li r4, 1
/* 8036686C 003637CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366870 003637D0  7D 89 03 A6 */	mtctr r12
/* 80366874 003637D4  4E 80 04 21 */	bctrl 
lbl_80366878:
/* 80366878 003637D8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8036687C 003637DC  28 03 00 00 */	cmplwi r3, 0
/* 80366880 003637E0  41 82 00 18 */	beq lbl_80366898
/* 80366884 003637E4  81 83 00 00 */	lwz r12, 0(r3)
/* 80366888 003637E8  38 80 00 01 */	li r4, 1
/* 8036688C 003637EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366890 003637F0  7D 89 03 A6 */	mtctr r12
/* 80366894 003637F4  4E 80 04 21 */	bctrl 
lbl_80366898:
/* 80366898 003637F8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8036689C 003637FC  28 03 00 00 */	cmplwi r3, 0
/* 803668A0 00363800  41 82 00 18 */	beq lbl_803668B8
/* 803668A4 00363804  81 83 00 00 */	lwz r12, 0(r3)
/* 803668A8 00363808  38 80 00 01 */	li r4, 1
/* 803668AC 0036380C  81 8C 00 08 */	lwz r12, 8(r12)
/* 803668B0 00363810  7D 89 03 A6 */	mtctr r12
/* 803668B4 00363814  4E 80 04 21 */	bctrl 
lbl_803668B8:
/* 803668B8 00363818  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 803668BC 0036381C  28 03 00 00 */	cmplwi r3, 0
/* 803668C0 00363820  41 82 00 18 */	beq lbl_803668D8
/* 803668C4 00363824  81 83 00 00 */	lwz r12, 0(r3)
/* 803668C8 00363828  38 80 00 01 */	li r4, 1
/* 803668CC 0036382C  81 8C 00 08 */	lwz r12, 8(r12)
/* 803668D0 00363830  7D 89 03 A6 */	mtctr r12
/* 803668D4 00363834  4E 80 04 21 */	bctrl 
lbl_803668D8:
/* 803668D8 00363838  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 803668DC 0036383C  28 03 00 00 */	cmplwi r3, 0
/* 803668E0 00363840  41 82 00 18 */	beq lbl_803668F8
/* 803668E4 00363844  81 83 00 00 */	lwz r12, 0(r3)
/* 803668E8 00363848  38 80 00 01 */	li r4, 1
/* 803668EC 0036384C  81 8C 00 08 */	lwz r12, 8(r12)
/* 803668F0 00363850  7D 89 03 A6 */	mtctr r12
/* 803668F4 00363854  4E 80 04 21 */	bctrl 
lbl_803668F8:
/* 803668F8 00363858  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803668FC 0036385C  28 03 00 00 */	cmplwi r3, 0
/* 80366900 00363860  41 82 00 18 */	beq lbl_80366918
/* 80366904 00363864  81 83 00 00 */	lwz r12, 0(r3)
/* 80366908 00363868  38 80 00 01 */	li r4, 1
/* 8036690C 0036386C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366910 00363870  7D 89 03 A6 */	mtctr r12
/* 80366914 00363874  4E 80 04 21 */	bctrl 
lbl_80366918:
/* 80366918 00363878  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8036691C 0036387C  28 03 00 00 */	cmplwi r3, 0
/* 80366920 00363880  41 82 00 18 */	beq lbl_80366938
/* 80366924 00363884  81 83 00 00 */	lwz r12, 0(r3)
/* 80366928 00363888  38 80 00 01 */	li r4, 1
/* 8036692C 0036388C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366930 00363890  7D 89 03 A6 */	mtctr r12
/* 80366934 00363894  4E 80 04 21 */	bctrl 
lbl_80366938:
/* 80366938 00363898  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8036693C 0036389C  28 03 00 00 */	cmplwi r3, 0
/* 80366940 003638A0  41 82 00 18 */	beq lbl_80366958
/* 80366944 003638A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80366948 003638A8  38 80 00 01 */	li r4, 1
/* 8036694C 003638AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366950 003638B0  7D 89 03 A6 */	mtctr r12
/* 80366954 003638B4  4E 80 04 21 */	bctrl 
lbl_80366958:
/* 80366958 003638B8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8036695C 003638BC  28 03 00 00 */	cmplwi r3, 0
/* 80366960 003638C0  41 82 00 18 */	beq lbl_80366978
/* 80366964 003638C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80366968 003638C8  38 80 00 01 */	li r4, 1
/* 8036696C 003638CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366970 003638D0  7D 89 03 A6 */	mtctr r12
/* 80366974 003638D4  4E 80 04 21 */	bctrl 
lbl_80366978:
/* 80366978 003638D8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8036697C 003638DC  28 03 00 00 */	cmplwi r3, 0
/* 80366980 003638E0  41 82 00 18 */	beq lbl_80366998
/* 80366984 003638E4  81 83 00 00 */	lwz r12, 0(r3)
/* 80366988 003638E8  38 80 00 01 */	li r4, 1
/* 8036698C 003638EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80366990 003638F0  7D 89 03 A6 */	mtctr r12
/* 80366994 003638F4  4E 80 04 21 */	bctrl 
lbl_80366998:
/* 80366998 003638F8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8036699C 003638FC  28 03 00 00 */	cmplwi r3, 0
/* 803669A0 00363900  41 82 00 18 */	beq lbl_803669B8
/* 803669A4 00363904  81 83 00 00 */	lwz r12, 0(r3)
/* 803669A8 00363908  38 80 00 01 */	li r4, 1
/* 803669AC 0036390C  81 8C 00 08 */	lwz r12, 8(r12)
/* 803669B0 00363910  7D 89 03 A6 */	mtctr r12
/* 803669B4 00363914  4E 80 04 21 */	bctrl 
lbl_803669B8:
/* 803669B8 00363918  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 803669BC 0036391C  28 03 00 00 */	cmplwi r3, 0
/* 803669C0 00363920  41 82 00 18 */	beq lbl_803669D8
/* 803669C4 00363924  81 83 00 00 */	lwz r12, 0(r3)
/* 803669C8 00363928  38 80 00 01 */	li r4, 1
/* 803669CC 0036392C  81 8C 00 08 */	lwz r12, 8(r12)
/* 803669D0 00363930  7D 89 03 A6 */	mtctr r12
/* 803669D4 00363934  4E 80 04 21 */	bctrl 
lbl_803669D8:
/* 803669D8 00363938  34 1F 00 60 */	addic. r0, r31, 0x60
/* 803669DC 0036393C  41 82 00 30 */	beq lbl_80366A0C
/* 803669E0 00363940  88 1F 00 6C */	lbz r0, 0x6c(r31)
/* 803669E4 00363944  28 00 00 00 */	cmplwi r0, 0
/* 803669E8 00363948  41 82 00 1C */	beq lbl_80366A04
/* 803669EC 0036394C  34 7F 00 60 */	addic. r3, r31, 0x60
/* 803669F0 00363950  41 82 00 14 */	beq lbl_80366A04
/* 803669F4 00363954  28 03 00 00 */	cmplwi r3, 0
/* 803669F8 00363958  41 82 00 0C */	beq lbl_80366A04
/* 803669FC 0036395C  38 80 00 00 */	li r4, 0
/* 80366A00 00363960  4B FD A4 41 */	bl __dt__6CTokenFv
lbl_80366A04:
/* 80366A04 00363964  38 00 00 00 */	li r0, 0
/* 80366A08 00363968  98 1F 00 6C */	stb r0, 0x6c(r31)
lbl_80366A0C:
/* 80366A0C 0036396C  34 1F 00 50 */	addic. r0, r31, 0x50
/* 80366A10 00363970  41 82 00 30 */	beq lbl_80366A40
/* 80366A14 00363974  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 80366A18 00363978  28 00 00 00 */	cmplwi r0, 0
/* 80366A1C 0036397C  41 82 00 1C */	beq lbl_80366A38
/* 80366A20 00363980  34 7F 00 50 */	addic. r3, r31, 0x50
/* 80366A24 00363984  41 82 00 14 */	beq lbl_80366A38
/* 80366A28 00363988  28 03 00 00 */	cmplwi r3, 0
/* 80366A2C 0036398C  41 82 00 0C */	beq lbl_80366A38
/* 80366A30 00363990  38 80 00 00 */	li r4, 0
/* 80366A34 00363994  4B FD A4 0D */	bl __dt__6CTokenFv
lbl_80366A38:
/* 80366A38 00363998  38 00 00 00 */	li r0, 0
/* 80366A3C 0036399C  98 1F 00 5C */	stb r0, 0x5c(r31)
lbl_80366A40:
/* 80366A40 003639A0  34 1F 00 40 */	addic. r0, r31, 0x40
/* 80366A44 003639A4  41 82 00 30 */	beq lbl_80366A74
/* 80366A48 003639A8  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 80366A4C 003639AC  28 00 00 00 */	cmplwi r0, 0
/* 80366A50 003639B0  41 82 00 1C */	beq lbl_80366A6C
/* 80366A54 003639B4  34 7F 00 40 */	addic. r3, r31, 0x40
/* 80366A58 003639B8  41 82 00 14 */	beq lbl_80366A6C
/* 80366A5C 003639BC  28 03 00 00 */	cmplwi r3, 0
/* 80366A60 003639C0  41 82 00 0C */	beq lbl_80366A6C
/* 80366A64 003639C4  38 80 00 00 */	li r4, 0
/* 80366A68 003639C8  4B FD A3 D9 */	bl __dt__6CTokenFv
lbl_80366A6C:
/* 80366A6C 003639CC  38 00 00 00 */	li r0, 0
/* 80366A70 003639D0  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_80366A74:
/* 80366A74 003639D4  7F C0 07 35 */	extsh. r0, r30
/* 80366A78 003639D8  40 81 00 0C */	ble lbl_80366A84
/* 80366A7C 003639DC  7F E3 FB 78 */	mr r3, r31
/* 80366A80 003639E0  4B FA EE B1 */	bl Free__7CMemoryFPCv
lbl_80366A84:
/* 80366A84 003639E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80366A88 003639E8  7F E3 FB 78 */	mr r3, r31
/* 80366A8C 003639EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80366A90 003639F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80366A94 003639F4  7C 08 03 A6 */	mtlr r0
/* 80366A98 003639F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80366A9C 003639FC  4E 80 00 20 */	blr 

.global __ct__20CElectricDescriptionFv
__ct__20CElectricDescriptionFv:
/* 80366AA0 00363A00  38 00 00 00 */	li r0, 0
/* 80366AA4 00363A04  90 03 00 00 */	stw r0, 0(r3)
/* 80366AA8 00363A08  90 03 00 04 */	stw r0, 4(r3)
/* 80366AAC 00363A0C  90 03 00 08 */	stw r0, 8(r3)
/* 80366AB0 00363A10  90 03 00 0C */	stw r0, 0xc(r3)
/* 80366AB4 00363A14  90 03 00 10 */	stw r0, 0x10(r3)
/* 80366AB8 00363A18  90 03 00 14 */	stw r0, 0x14(r3)
/* 80366ABC 00363A1C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80366AC0 00363A20  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80366AC4 00363A24  90 03 00 20 */	stw r0, 0x20(r3)
/* 80366AC8 00363A28  90 03 00 24 */	stw r0, 0x24(r3)
/* 80366ACC 00363A2C  90 03 00 28 */	stw r0, 0x28(r3)
/* 80366AD0 00363A30  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80366AD4 00363A34  90 03 00 30 */	stw r0, 0x30(r3)
/* 80366AD8 00363A38  90 03 00 34 */	stw r0, 0x34(r3)
/* 80366ADC 00363A3C  90 03 00 38 */	stw r0, 0x38(r3)
/* 80366AE0 00363A40  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80366AE4 00363A44  98 03 00 4C */	stb r0, 0x4c(r3)
/* 80366AE8 00363A48  98 03 00 5C */	stb r0, 0x5c(r3)
/* 80366AEC 00363A4C  98 03 00 6C */	stb r0, 0x6c(r3)
/* 80366AF0 00363A50  98 03 00 70 */	stb r0, 0x70(r3)
/* 80366AF4 00363A54  4E 80 00 20 */	blr