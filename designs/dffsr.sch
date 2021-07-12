v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2380 -880 2490 -880 { lab=qint1}
N 2470 -820 2490 -820 { lab=qb1}
N 2470 -820 2470 -790 { lab=qb1}
N 2470 -790 2670 -760 { lab=qb1}
N 2670 -760 2670 -710 { lab=qb1}
N 2670 -850 2670 -810 { lab=q1}
N 2470 -770 2670 -810 { lab=q1}
N 2470 -770 2470 -740 { lab=q1}
N 2470 -740 2490 -740 { lab=q1}
N 2380 -680 2490 -680 { lab=qbint1}
N 2070 -910 2070 -840 { lab=D}
N 2070 -680 2070 -650 { lab=#net1}
N 2920 -880 3030 -880 { lab=qint2}
N 3010 -820 3030 -820 { lab=QB}
N 3010 -820 3010 -790 { lab=QB}
N 3010 -790 3210 -760 { lab=QB}
N 3210 -760 3210 -710 { lab=QB}
N 3210 -850 3210 -810 { lab=Q}
N 3010 -770 3210 -810 { lab=Q}
N 3010 -770 3010 -740 { lab=Q}
N 3010 -740 3030 -740 { lab=Q}
N 2920 -680 3030 -680 { lab=qbint2}
N 2660 -850 2690 -850 { lab=q1}
N 2690 -910 2690 -850 { lab=q1}
N 2690 -910 2750 -910 { lab=q1}
N 2660 -710 2690 -710 { lab=qb1}
N 2690 -710 2690 -650 { lab=qb1}
N 2690 -650 2750 -650 { lab=qb1}
N 3200 -710 3240 -710 { lab=QB}
N 3200 -850 3240 -850 { lab=Q}
N 2730 -850 2750 -850 { lab=#net2}
N 2730 -710 2750 -710 { lab=#net2}
N 1770 -530 1800 -530 { lab=CLK}
N 1960 -530 1990 -530 { lab=#net2}
N 1980 -530 1980 -450 { lab=#net2}
N 1980 -450 2730 -450 { lab=#net2}
N 2730 -850 2730 -450 { lab=#net2}
N 1770 -610 2470 -610 { lab=RSTB}
N 2470 -710 2470 -610 { lab=RSTB}
N 2470 -710 2490 -710 { lab=RSTB}
N 2470 -610 3010 -610 { lab=RSTB}
N 3010 -710 3010 -610 { lab=RSTB}
N 3010 -710 3030 -710 { lab=RSTB}
N 2160 -880 2210 -880 { lab=RSTB}
N 2160 -880 2160 -610 { lab=RSTB}
N 2150 -530 2180 -530 { lab=#net3}
N 2180 -850 2180 -530 { lab=#net3}
N 2180 -850 2210 -850 { lab=#net3}
N 2180 -710 2210 -710 { lab=#net3}
N 1770 -910 2210 -910 { lab=D}
N 2070 -650 2210 -650 { lab=#net1}
N 2140 -680 2210 -680 { lab=SETB}
N 2140 -960 2140 -680 { lab=SETB}
N 1770 -960 3010 -960 { lab=SETB}
N 3010 -960 3010 -850 { lab=SETB}
N 3010 -850 3030 -850 { lab=SETB}
N 2470 -850 2490 -850 { lab=SETB}
N 2470 -960 2470 -850 { lab=SETB}
C {devices/ipin.sym} 1770 -910 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 1770 -530 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} 3240 -850 0 0 {name=p3 lab=Q}
C {devices/opin.sym} 3240 -710 0 0 {name=p4 lab=QB}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 2040 -530 0 0 {name=x5 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 2070 -790 1 0 {name=x1 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand2.sym} 2820 -880 0 0 {name=x8 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand2.sym} 2820 -680 0 0 {name=x10 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 1850 -530 0 0 {name=x11 M=M}
C {devices/lab_wire.sym} 2720 -910 0 0 {name=l1 sig_type=std_logic lab=q1}
C {devices/lab_wire.sym} 2720 -650 0 0 {name=l2 sig_type=std_logic lab=qb1}
C {devices/lab_wire.sym} 2430 -880 0 0 {name=l3 sig_type=std_logic lab=qint1}
C {devices/lab_wire.sym} 2440 -680 0 0 {name=l4 sig_type=std_logic lab=qbint1}
C {devices/lab_wire.sym} 2980 -880 0 0 {name=l5 sig_type=std_logic lab=qint2}
C {devices/lab_wire.sym} 2990 -680 0 0 {name=l6 sig_type=std_logic lab=qbint2}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand3.sym} 3100 -710 0 0 {name=x3 M=M}
C {devices/ipin.sym} 1770 -610 0 0 {name=p5 lab=RSTB}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand3.sym} 2560 -710 0 0 {name=x4 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand3.sym} 2280 -880 0 0 {name=x6 M=M}
C {devices/ipin.sym} 1770 -960 0 0 {name=p6 lab=SETB}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand3.sym} 2280 -680 0 0 {name=x2 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand3.sym} 2560 -850 0 0 {name=x9 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand3.sym} 3100 -850 0 0 {name=x7 M=M}
