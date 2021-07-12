v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2130 -790 2170 -790 { lab=A}
N 2130 -760 2170 -760 { lab=B}
N 2340 -760 2370 -760 { lab=#net1}
N 2530 -760 2570 -760 { lab=Y}
N 2130 -730 2170 -730 { lab=C}
C {devices/ipin.sym} 2130 -790 0 0 {name=p1 lab=A}
C {devices/ipin.sym} 2130 -760 0 0 {name=p2 lab=B}
C {devices/opin.sym} 2570 -760 0 0 {name=p3 lab=Y}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 2420 -760 0 0 {name=x2 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand3.sym} 2240 -760 0 0 {name=x1 M=M}
C {devices/ipin.sym} 2130 -730 0 0 {name=p4 lab=C}
