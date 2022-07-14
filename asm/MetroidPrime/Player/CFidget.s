.include "macros.inc"

.section .sdata

.global lbl_805A7830
lbl_805A7830:
	# ROM: 0x3F51D0
	.4byte 0x41A00000

.global lbl_805A7834
lbl_805A7834:
	# ROM: 0x3F51D4
	.4byte 0x41A00000

.section .text, "ax"

.global Update__7CFidgetFibbfR13CStateManager
Update__7CFidgetFibbfR13CStateManager:
/* 80154768 001516C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015476C 001516CC  7C 08 02 A6 */	mflr r0
/* 80154770 001516D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80154774 001516D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80154778 001516D8  7C FF 3B 78 */	mr r31, r7
/* 8015477C 001516DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80154780 001516E0  7C 7E 1B 78 */	mr r30, r3
/* 80154784 001516E4  80 03 00 00 */	lwz r0, 0(r3)
/* 80154788 001516E8  2C 00 00 00 */	cmpwi r0, 0
/* 8015478C 001516EC  41 82 00 78 */	beq lbl_80154804
/* 80154790 001516F0  2C 00 00 02 */	cmpwi r0, 2
/* 80154794 001516F4  41 82 00 38 */	beq lbl_801547CC
/* 80154798 001516F8  40 80 00 10 */	bge lbl_801547A8
/* 8015479C 001516FC  2C 00 00 01 */	cmpwi r0, 1
/* 801547A0 00151700  40 80 00 14 */	bge lbl_801547B4
/* 801547A4 00151704  48 00 00 58 */	b lbl_801547FC
lbl_801547A8:
/* 801547A8 00151708  2C 00 00 04 */	cmpwi r0, 4
/* 801547AC 0015170C  40 80 00 50 */	bge lbl_801547FC
/* 801547B0 00151710  48 00 00 34 */	b lbl_801547E4
lbl_801547B4:
/* 801547B4 00151714  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 801547B8 00151718  38 60 00 04 */	li r3, 4
/* 801547BC 0015171C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801547C0 00151720  41 82 03 80 */	beq lbl_80154B40
/* 801547C4 00151724  38 60 00 07 */	li r3, 7
/* 801547C8 00151728  48 00 03 78 */	b lbl_80154B40
lbl_801547CC:
/* 801547CC 0015172C  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 801547D0 00151730  38 60 00 05 */	li r3, 5
/* 801547D4 00151734  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801547D8 00151738  41 82 03 68 */	beq lbl_80154B40
/* 801547DC 0015173C  38 60 00 07 */	li r3, 7
/* 801547E0 00151740  48 00 03 60 */	b lbl_80154B40
lbl_801547E4:
/* 801547E4 00151744  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 801547E8 00151748  38 60 00 06 */	li r3, 6
/* 801547EC 0015174C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801547F0 00151750  41 82 03 50 */	beq lbl_80154B40
/* 801547F4 00151754  38 60 00 07 */	li r3, 7
/* 801547F8 00151758  48 00 03 48 */	b lbl_80154B40
lbl_801547FC:
/* 801547FC 0015175C  38 00 00 00 */	li r0, 0
/* 80154800 00151760  90 1E 00 00 */	stw r0, 0(r30)
lbl_80154804:
/* 80154804 00151764  2C 04 00 00 */	cmpwi r4, 0
/* 80154808 00151768  41 82 00 14 */	beq lbl_8015481C
/* 8015480C 0015176C  C0 02 9E 00 */	lfs f0, lbl_805ABB20@sda21(r2)
/* 80154810 00151770  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80154814 00151774  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80154818 00151778  48 00 00 3C */	b lbl_80154854
lbl_8015481C:
/* 8015481C 0015177C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80154820 00151780  C0 02 9E 04 */	lfs f0, lbl_805ABB24@sda21(r2)
/* 80154824 00151784  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80154828 00151788  40 80 00 0C */	bge lbl_80154834
/* 8015482C 0015178C  EC 02 08 2A */	fadds f0, f2, f1
/* 80154830 00151790  D0 1E 00 14 */	stfs f0, 0x14(r30)
lbl_80154834:
/* 80154834 00151794  C0 42 9E 08 */	lfs f2, lbl_805ABB28@sda21(r2)
/* 80154838 00151798  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8015483C 0015179C  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80154840 001517A0  EC 02 00 2A */	fadds f0, f2, f0
/* 80154844 001517A4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80154848 001517A8  40 80 00 0C */	bge lbl_80154854
/* 8015484C 001517AC  EC 03 08 2A */	fadds f0, f3, f1
/* 80154850 001517B0  D0 1E 00 2C */	stfs f0, 0x2c(r30)
lbl_80154854:
/* 80154854 001517B4  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80154858 001517B8  41 82 00 10 */	beq lbl_80154868
/* 8015485C 001517BC  C0 02 9E 00 */	lfs f0, lbl_805ABB20@sda21(r2)
/* 80154860 001517C0  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80154864 001517C4  48 00 00 1C */	b lbl_80154880
lbl_80154868:
/* 80154868 001517C8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8015486C 001517CC  C0 02 9E 0C */	lfs f0, lbl_805ABB2C@sda21(r2)
/* 80154870 001517D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80154874 001517D4  40 80 00 0C */	bge lbl_80154880
/* 80154878 001517D8  EC 02 08 2A */	fadds f0, f2, f1
/* 8015487C 001517DC  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_80154880:
/* 80154880 001517E0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80154884 001517E4  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 80154888 001517E8  2C 00 00 00 */	cmpwi r0, 0
/* 8015488C 001517EC  40 82 00 20 */	bne lbl_801548AC
/* 80154890 001517F0  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80154894 001517F4  C0 02 9E 10 */	lfs f0, lbl_805ABB30@sda21(r2)
/* 80154898 001517F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015489C 001517FC  40 80 00 18 */	bge lbl_801548B4
/* 801548A0 00151800  EC 02 08 2A */	fadds f0, f2, f1
/* 801548A4 00151804  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 801548A8 00151808  48 00 00 0C */	b lbl_801548B4
lbl_801548AC:
/* 801548AC 0015180C  C0 02 9E 00 */	lfs f0, lbl_805ABB20@sda21(r2)
/* 801548B0 00151810  D0 1E 00 1C */	stfs f0, 0x1c(r30)
lbl_801548B4:
/* 801548B4 00151814  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 801548B8 00151818  41 82 00 10 */	beq lbl_801548C8
/* 801548BC 0015181C  C0 02 9E 00 */	lfs f0, lbl_805ABB20@sda21(r2)
/* 801548C0 00151820  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 801548C4 00151824  48 00 00 1C */	b lbl_801548E0
lbl_801548C8:
/* 801548C8 00151828  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 801548CC 0015182C  C0 02 9E 10 */	lfs f0, lbl_805ABB30@sda21(r2)
/* 801548D0 00151830  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801548D4 00151834  40 80 00 0C */	bge lbl_801548E0
/* 801548D8 00151838  EC 02 08 2A */	fadds f0, f2, f1
/* 801548DC 0015183C  D0 1E 00 20 */	stfs f0, 0x20(r30)
lbl_801548E0:
/* 801548E0 00151840  80 1E 00 00 */	lwz r0, 0(r30)
/* 801548E4 00151844  38 60 00 00 */	li r3, 0
/* 801548E8 00151848  2C 00 00 00 */	cmpwi r0, 0
/* 801548EC 0015184C  40 82 00 6C */	bne lbl_80154958
/* 801548F0 00151850  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801548F4 00151854  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801548F8 00151858  41 82 00 2C */	beq lbl_80154924
/* 801548FC 0015185C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80154900 00151860  EC 00 08 2A */	fadds f0, f0, f1
/* 80154904 00151864  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80154908 00151868  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8015490C 0015186C  C0 0D 8C 70 */	lfs f0, lbl_805A7830@sda21(r13)
/* 80154910 00151870  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80154914 00151874  40 81 00 10 */	ble lbl_80154924
/* 80154918 00151878  C0 02 9E 00 */	lfs f0, lbl_805ABB20@sda21(r2)
/* 8015491C 0015187C  60 63 00 01 */	ori r3, r3, 1
/* 80154920 00151880  D0 1E 00 24 */	stfs f0, 0x24(r30)
lbl_80154924:
/* 80154924 00151884  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80154928 00151888  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8015492C 0015188C  41 82 00 2C */	beq lbl_80154958
/* 80154930 00151890  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80154934 00151894  EC 00 08 2A */	fadds f0, f0, f1
/* 80154938 00151898  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8015493C 0015189C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80154940 001518A0  C0 0D 8C 74 */	lfs f0, lbl_805A7834@sda21(r13)
/* 80154944 001518A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80154948 001518A8  40 81 00 10 */	ble lbl_80154958
/* 8015494C 001518AC  C0 02 9E 00 */	lfs f0, lbl_805ABB20@sda21(r2)
/* 80154950 001518B0  60 63 00 02 */	ori r3, r3, 2
/* 80154954 001518B4  D0 1E 00 28 */	stfs f0, 0x28(r30)
lbl_80154958:
/* 80154958 001518B8  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8015495C 001518BC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80154960 001518C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80154964 001518C4  40 81 00 10 */	ble lbl_80154974
/* 80154968 001518C8  38 00 00 03 */	li r0, 3
/* 8015496C 001518CC  90 1E 00 00 */	stw r0, 0(r30)
/* 80154970 001518D0  48 00 00 DC */	b lbl_80154A4C
lbl_80154974:
/* 80154974 001518D4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80154978 001518D8  C0 02 9E 14 */	lfs f0, lbl_805ABB34@sda21(r2)
/* 8015497C 001518DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80154980 001518E0  40 81 00 4C */	ble lbl_801549CC
/* 80154984 001518E4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80154988 001518E8  C0 22 9E 18 */	lfs f1, lbl_805ABB38@sda21(r2)
/* 8015498C 001518EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80154990 001518F0  40 81 00 3C */	ble lbl_801549CC
/* 80154994 001518F4  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80154998 001518F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8015499C 001518FC  40 81 00 30 */	ble lbl_801549CC
/* 801549A0 00151900  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801549A4 00151904  41 82 00 14 */	beq lbl_801549B8
/* 801549A8 00151908  80 1E 00 08 */	lwz r0, 8(r30)
/* 801549AC 0015190C  60 00 00 01 */	ori r0, r0, 1
/* 801549B0 00151910  90 1E 00 08 */	stw r0, 8(r30)
/* 801549B4 00151914  48 00 00 18 */	b lbl_801549CC
lbl_801549B8:
/* 801549B8 00151918  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 801549BC 0015191C  41 82 00 10 */	beq lbl_801549CC
/* 801549C0 00151920  80 1E 00 08 */	lwz r0, 8(r30)
/* 801549C4 00151924  60 00 00 02 */	ori r0, r0, 2
/* 801549C8 00151928  90 1E 00 08 */	stw r0, 8(r30)
lbl_801549CC:
/* 801549CC 0015192C  80 7E 00 08 */	lwz r3, 8(r30)
/* 801549D0 00151930  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 801549D4 00151934  2C 00 00 03 */	cmpwi r0, 3
/* 801549D8 00151938  40 82 00 44 */	bne lbl_80154A1C
/* 801549DC 0015193C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801549E0 00151940  48 1B DB 41 */	bl Next__9CRandom16Fv
/* 801549E4 00151944  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 801549E8 00151948  38 A0 00 01 */	li r5, 1
/* 801549EC 0015194C  38 04 85 1F */	addi r0, r4, 0x51EB851F@l
/* 801549F0 00151950  7C 00 18 96 */	mulhw r0, r0, r3
/* 801549F4 00151954  7C 00 2E 70 */	srawi r0, r0, 5
/* 801549F8 00151958  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801549FC 0015195C  7C 00 22 14 */	add r0, r0, r4
/* 80154A00 00151960  1C 00 00 64 */	mulli r0, r0, 0x64
/* 80154A04 00151964  7C 00 18 50 */	subf r0, r0, r3
/* 80154A08 00151968  2C 00 00 32 */	cmpwi r0, 0x32
/* 80154A0C 0015196C  40 81 00 08 */	ble lbl_80154A14
/* 80154A10 00151970  38 A0 00 02 */	li r5, 2
lbl_80154A14:
/* 80154A14 00151974  90 BE 00 00 */	stw r5, 0(r30)
/* 80154A18 00151978  48 00 00 34 */	b lbl_80154A4C
lbl_80154A1C:
/* 80154A1C 0015197C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80154A20 00151980  41 82 00 10 */	beq lbl_80154A30
/* 80154A24 00151984  38 00 00 01 */	li r0, 1
/* 80154A28 00151988  90 1E 00 00 */	stw r0, 0(r30)
/* 80154A2C 0015198C  48 00 00 20 */	b lbl_80154A4C
lbl_80154A30:
/* 80154A30 00151990  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80154A34 00151994  41 82 00 10 */	beq lbl_80154A44
/* 80154A38 00151998  38 00 00 02 */	li r0, 2
/* 80154A3C 0015199C  90 1E 00 00 */	stw r0, 0(r30)
/* 80154A40 001519A0  48 00 00 0C */	b lbl_80154A4C
lbl_80154A44:
/* 80154A44 001519A4  38 00 00 00 */	li r0, 0
/* 80154A48 001519A8  90 1E 00 00 */	stw r0, 0(r30)
lbl_80154A4C:
/* 80154A4C 001519AC  80 1E 00 00 */	lwz r0, 0(r30)
/* 80154A50 001519B0  2C 00 00 02 */	cmpwi r0, 2
/* 80154A54 001519B4  41 82 00 78 */	beq lbl_80154ACC
/* 80154A58 001519B8  40 80 00 10 */	bge lbl_80154A68
/* 80154A5C 001519BC  2C 00 00 01 */	cmpwi r0, 1
/* 80154A60 001519C0  40 80 00 14 */	bge lbl_80154A74
/* 80154A64 001519C4  48 00 00 D8 */	b lbl_80154B3C
lbl_80154A68:
/* 80154A68 001519C8  2C 00 00 04 */	cmpwi r0, 4
/* 80154A6C 001519CC  40 80 00 D0 */	bge lbl_80154B3C
/* 80154A70 001519D0  48 00 00 B0 */	b lbl_80154B20
lbl_80154A74:
/* 80154A74 001519D4  88 7E 00 34 */	lbz r3, 0x34(r30)
/* 80154A78 001519D8  38 00 00 01 */	li r0, 1
/* 80154A7C 001519DC  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 80154A80 001519E0  38 00 00 02 */	li r0, 2
/* 80154A84 001519E4  98 7E 00 34 */	stb r3, 0x34(r30)
/* 80154A88 001519E8  C0 22 9E 18 */	lfs f1, lbl_805ABB38@sda21(r2)
/* 80154A8C 001519EC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80154A90 001519F0  C0 42 9E 1C */	lfs f2, lbl_805ABB3C@sda21(r2)
/* 80154A94 001519F4  80 1E 00 08 */	lwz r0, 8(r30)
/* 80154A98 001519F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80154A9C 001519FC  90 1E 00 08 */	stw r0, 8(r30)
/* 80154AA0 00151A00  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80154AA4 00151A04  48 1B DA A1 */	bl Range__9CRandom16Fff
/* 80154AA8 00151A08  D0 2D 8C 70 */	stfs f1, lbl_805A7830@sda21(r13)
/* 80154AAC 00151A0C  38 00 00 00 */	li r0, 0
/* 80154AB0 00151A10  38 80 00 00 */	li r4, 0
/* 80154AB4 00151A14  38 A0 00 04 */	li r5, 4
/* 80154AB8 00151A18  90 1E 00 04 */	stw r0, 4(r30)
/* 80154ABC 00151A1C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80154AC0 00151A20  48 1B DA D5 */	bl Range__9CRandom16Fii
/* 80154AC4 00151A24  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80154AC8 00151A28  48 00 00 74 */	b lbl_80154B3C
lbl_80154ACC:
/* 80154ACC 00151A2C  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 80154AD0 00151A30  38 60 00 01 */	li r3, 1
/* 80154AD4 00151A34  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80154AD8 00151A38  C0 22 9E 18 */	lfs f1, lbl_805ABB38@sda21(r2)
/* 80154ADC 00151A3C  98 1E 00 34 */	stb r0, 0x34(r30)
/* 80154AE0 00151A40  C0 42 9E 20 */	lfs f2, lbl_805ABB40@sda21(r2)
/* 80154AE4 00151A44  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80154AE8 00151A48  80 1E 00 08 */	lwz r0, 8(r30)
/* 80154AEC 00151A4C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80154AF0 00151A50  90 1E 00 08 */	stw r0, 8(r30)
/* 80154AF4 00151A54  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80154AF8 00151A58  48 1B DA 4D */	bl Range__9CRandom16Fff
/* 80154AFC 00151A5C  D0 2D 8C 74 */	stfs f1, lbl_805A7834@sda21(r13)
/* 80154B00 00151A60  38 00 00 01 */	li r0, 1
/* 80154B04 00151A64  38 80 00 00 */	li r4, 0
/* 80154B08 00151A68  38 A0 00 05 */	li r5, 5
/* 80154B0C 00151A6C  90 1E 00 04 */	stw r0, 4(r30)
/* 80154B10 00151A70  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80154B14 00151A74  48 1B DA 81 */	bl Range__9CRandom16Fii
/* 80154B18 00151A78  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80154B1C 00151A7C  48 00 00 20 */	b lbl_80154B3C
lbl_80154B20:
/* 80154B20 00151A80  38 80 00 00 */	li r4, 0
/* 80154B24 00151A84  38 60 00 01 */	li r3, 1
/* 80154B28 00151A88  90 9E 00 04 */	stw r4, 4(r30)
/* 80154B2C 00151A8C  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 80154B30 00151A90  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80154B34 00151A94  98 1E 00 34 */	stb r0, 0x34(r30)
/* 80154B38 00151A98  90 9E 00 0C */	stw r4, 0xc(r30)
lbl_80154B3C:
/* 80154B3C 00151A9C  80 7E 00 00 */	lwz r3, 0(r30)
lbl_80154B40:
/* 80154B40 00151AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80154B44 00151AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80154B48 00151AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80154B4C 00151AAC  7C 08 03 A6 */	mtlr r0
/* 80154B50 00151AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80154B54 00151AB4  4E 80 00 20 */	blr

.global ResetMinor__7CFidgetFv
ResetMinor__7CFidgetFv:
/* 80154B58 00151AB8  38 00 00 00 */	li r0, 0
/* 80154B5C 00151ABC  90 03 00 00 */	stw r0, 0(r3)
/* 80154B60 00151AC0  4E 80 00 20 */	blr

.global ResetAll__7CFidgetFv
ResetAll__7CFidgetFv:
/* 80154B64 00151AC4  38 A0 00 00 */	li r5, 0
/* 80154B68 00151AC8  38 80 FF FF */	li r4, -1
/* 80154B6C 00151ACC  90 A3 00 00 */	stw r5, 0(r3)
/* 80154B70 00151AD0  38 00 00 03 */	li r0, 3
/* 80154B74 00151AD4  C0 02 9E 00 */	lfs f0, lbl_805ABB20@sda21(r2)
/* 80154B78 00151AD8  90 83 00 04 */	stw r4, 4(r3)
/* 80154B7C 00151ADC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80154B80 00151AE0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80154B84 00151AE4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80154B88 00151AE8  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80154B8C 00151AEC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80154B90 00151AF0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80154B94 00151AF4  90 A3 00 08 */	stw r5, 8(r3)
/* 80154B98 00151AF8  90 83 00 0C */	stw r4, 0xc(r3)
/* 80154B9C 00151AFC  90 03 00 10 */	stw r0, 0x10(r3)
/* 80154BA0 00151B00  88 03 00 34 */	lbz r0, 0x34(r3)
/* 80154BA4 00151B04  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80154BA8 00151B08  98 03 00 34 */	stb r0, 0x34(r3)
/* 80154BAC 00151B0C  4E 80 00 20 */	blr

.global __ct__7CFidgetFv
__ct__7CFidgetFv:
/* 80154BB0 00151B10  38 A0 00 00 */	li r5, 0
/* 80154BB4 00151B14  38 80 FF FF */	li r4, -1
/* 80154BB8 00151B18  90 A3 00 00 */	stw r5, 0(r3)
/* 80154BBC 00151B1C  38 00 00 03 */	li r0, 3
/* 80154BC0 00151B20  C0 22 9E 00 */	lfs f1, lbl_805ABB20@sda21(r2)
/* 80154BC4 00151B24  90 83 00 04 */	stw r4, 4(r3)
/* 80154BC8 00151B28  C0 02 9E 24 */	lfs f0, lbl_805ABB44@sda21(r2)
/* 80154BCC 00151B2C  90 A3 00 08 */	stw r5, 8(r3)
/* 80154BD0 00151B30  90 83 00 0C */	stw r4, 0xc(r3)
/* 80154BD4 00151B34  90 03 00 10 */	stw r0, 0x10(r3)
/* 80154BD8 00151B38  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80154BDC 00151B3C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80154BE0 00151B40  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80154BE4 00151B44  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80154BE8 00151B48  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80154BEC 00151B4C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80154BF0 00151B50  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80154BF4 00151B54  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80154BF8 00151B58  88 03 00 34 */	lbz r0, 0x34(r3)
/* 80154BFC 00151B5C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80154C00 00151B60  98 03 00 34 */	stb r0, 0x34(r3)
/* 80154C04 00151B64  4E 80 00 20 */	blr
