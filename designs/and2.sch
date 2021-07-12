v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2130 -790 2170 -790 { lab=A}
N 2130 -730 2170 -730 { lab=B}
N 2340 -760 2370 -760 { lab=#net1}
N 2530 -760 2570 -760 { lab=Y}
N 2130 -770 2170 -770 { lab=VDD}
N 2130 -750 2170 -750 { lab=VSS}
N 2330 -730 2370 -730 { lab=VSS}
N 2330 -790 2370 -790 { lab=VDD}
N 2120 -870 2160 -870 { lab=VDD}
N 2120 -850 2160 -850 { lab=VDD}
C {devices/ipin.sym} 2130 -790 0 0 {name=p1 lab=A}
C {devices/ipin.sym} 2130 -730 0 0 {name=p2 lab=B}
C {devices/opin.sym} 2570 -760 0 0 {name=p3 lab=Y}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/nand2.sym} 2240 -760 0 0 {name=x1 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 2420 -760 0 0 {name=x2 M=M}
C {devices/lab_wire.sym} 2160 -770 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 2160 -750 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 2360 -730 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 2360 -790 0 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 2120 -870 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 2120 -850 0 0 {name=p5 lab=VSS}
C {devices/lab_wire.sym} 2160 -870 0 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 2160 -850 0 0 {name=l6 sig_type=std_logic lab=VSS}
