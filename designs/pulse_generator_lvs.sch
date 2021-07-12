v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 960 -460 980 -460 { lab=#net1}
N 570 -420 590 -420 { lab=#net2}
N 570 -520 570 -420 { lab=#net2}
N 940 -500 980 -500 { lab=VDD}
N 940 -480 980 -480 { lab=VSS}
N 340 -490 380 -490 { lab=VDD}
N 340 -470 380 -470 { lab=VSS}
N -100 -520 -50 -520 { lab=trigb}
N 120 -650 160 -650 { lab=VDD}
N 120 -630 160 -630 { lab=VSS}
N -90 -550 -50 -550 { lab=VDD}
N -90 -490 -50 -490 { lab=VSS}
N 110 -520 160 -520 { lab=trig}
N 550 -390 590 -390 { lab=VDD}
N 550 -370 590 -370 { lab=VSS}
N 1130 -490 1160 -490 { lab=pulse}
N 760 -420 760 -340 { lab=#net3}
N 350 -440 380 -440 { lab=clk}
N 560 -340 560 -290 { lab=clk}
N 560 -290 780 -290 { lab=clk}
N 780 -340 780 -290 { lab=clk}
N 780 -340 790 -340 { lab=clk}
N 740 -340 760 -340 { lab=#net3}
N 760 -420 790 -420 { lab=#net3}
N 940 -420 960 -420 { lab=#net1}
N 960 -460 960 -420 { lab=#net1}
N 530 -520 980 -520 { lab=#net2}
N 310 -520 380 -520 { lab=#net4}
N 110 -290 560 -290 { lab=clk}
N 560 -340 590 -340 { lab=clk}
N 140 -440 160 -440 { lab=clk}
N 140 -440 140 -290 { lab=clk}
N 350 -440 350 -290 { lab=clk}
N 120 -490 160 -490 { lab=VDD}
N 120 -470 160 -470 { lab=VSS}
N 750 -390 790 -390 { lab=VDD}
N 750 -370 790 -370 { lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/noconn.sym} 940 -340 0 1 {name=l116}
C {devices/noconn.sym} 530 -440 0 1 {name=l118}
C {devices/lab_wire.sym} 970 -500 0 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 970 -480 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/dff_stdcell.sym} 450 -470 0 0 {name=x1}
C {devices/lab_wire.sym} 370 -490 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 370 -470 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -100 -520 0 0 {name=p1 lab=trigb}
C {devices/ipin.sym} 120 -650 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 120 -630 0 0 {name=p3 lab=VSS}
C {devices/lab_wire.sym} 160 -650 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 160 -630 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv1.sym} 0 -520 0 0 {name=x2}
C {devices/lab_wire.sym} -60 -550 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -60 -490 0 0 {name=l9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 150 -520 0 0 {name=l10 sig_type=std_logic lab=trig}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/dff_stdcell.sym} 660 -370 0 0 {name=x3}
C {devices/lab_wire.sym} 580 -390 0 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 580 -370 0 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 110 -290 0 0 {name=p4 lab=clk}
C {devices/opin.sym} 1160 -490 0 0 {name=p5 lab=pulse}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/dff_stdcell.sym} 860 -370 0 0 {name=x4}
C {devices/noconn.sym} 740 -420 0 1 {name=l13}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/dff_stdcell.sym} 230 -470 0 0 {name=x5}
C {devices/noconn.sym} 310 -440 0 1 {name=l14}
C {devices/lab_wire.sym} 150 -490 0 0 {name=l15 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 150 -470 0 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 780 -390 0 0 {name=l17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 780 -370 0 0 {name=l18 sig_type=std_logic lab=VSS}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/and2.sym} 1050 -490 0 0 {name=x6 M=1}
