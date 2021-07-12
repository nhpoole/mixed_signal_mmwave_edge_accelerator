v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 900 -290 940 -290 { lab=VDD}
N 900 -260 940 -260 { lab=VSS}
N 370 -290 390 -290 { lab=vcp}
N 390 -290 390 -250 { lab=vcp}
N 390 -250 430 -250 { lab=vcp}
N 430 -250 450 -250 { lab=vcp}
N 420 -290 450 -290 { lab=VDD}
N 420 -270 450 -270 { lab=VSS}
N 40 -290 70 -290 { lab=VDD}
N 40 -270 70 -270 { lab=VSS}
N 550 -150 580 -150 { lab=VDD}
N 550 -130 580 -130 { lab=VSS}
N 750 -290 780 -290 { lab=#net1}
N 780 -290 780 -110 { lab=#net1}
N 550 -110 780 -110 { lab=#net1}
N 50 -150 250 -150 { lab=#net2}
N 50 -210 50 -150 { lab=#net2}
N 50 -210 70 -210 { lab=#net2}
N 30 -230 70 -230 { lab=ibiasn}
N 30 -250 70 -250 { lab=vsigin}
N 900 -230 940 -230 { lab=vsigin}
N 900 -200 940 -200 { lab=ibiasn}
N 390 -340 390 -290 { lab=vcp}
N 390 -340 400 -340 { lab=vcp}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/ipin.sym} 900 -290 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 900 -260 0 0 {name=p3 lab=VSS}
C {devices/lab_wire.sym} 910 -290 0 1 {name=l34 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 910 -260 0 1 {name=l35 sig_type=std_logic lab=VSS}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/cs_ring_osc_lvs.sym} 600 -270 0 0 {name=x1}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/freq_div_lvs.sym} 400 -130 0 1 {name=x2}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/pfd_cp_lpf_lvs.sym} 220 -250 0 0 {name=x3}
C {devices/lab_wire.sym} 450 -290 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 450 -270 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 70 -290 0 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 70 -270 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 550 -150 0 1 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 550 -130 0 1 {name=l7 sig_type=std_logic lab=VSS}
C {devices/noconn.sym} 750 -270 0 1 {name=l8}
C {devices/lab_wire.sym} 70 -230 0 0 {name=l9 sig_type=std_logic lab=ibiasn}
C {devices/lab_wire.sym} 70 -250 0 0 {name=l10 sig_type=std_logic lab=vsigin}
C {devices/ipin.sym} 900 -230 0 0 {name=p1 lab=vsigin}
C {devices/ipin.sym} 900 -200 0 0 {name=p4 lab=ibiasn}
C {devices/lab_wire.sym} 910 -230 0 1 {name=l11 sig_type=std_logic lab=vsigin}
C {devices/lab_wire.sym} 910 -200 0 1 {name=l12 sig_type=std_logic lab=ibiasn}
C {devices/opin.sym} 400 -340 0 0 {name=p5 lab=vcp}
