v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 490 -600 490 -580 { lab=A}
N 490 -600 510 -600 { lab=A}
N 490 -580 490 -560 { lab=A}
N 490 -560 510 -560 { lab=A}
N 570 -600 590 -600 { lab=Y}
N 590 -600 590 -560 { lab=Y}
N 570 -560 590 -560 { lab=Y}
N 540 -570 540 -560 { lab=VDD}
N 540 -600 540 -590 { lab=VSS}
N 540 -590 580 -590 { lab=VSS}
N 580 -590 580 -550 { lab=VSS}
N 500 -610 500 -570 { lab=VDD}
N 500 -570 540 -570 { lab=VDD}
N 450 -580 490 -580 { lab=A}
N 450 -390 490 -390 { lab=B}
N 210 -740 260 -740 { lab=SEL}
N 420 -740 490 -740 { lab=SELB}
N 540 -690 540 -640 { lab=SEL}
N 490 -410 490 -390 { lab=B}
N 490 -410 510 -410 { lab=B}
N 490 -390 490 -370 { lab=B}
N 490 -370 510 -370 { lab=B}
N 570 -410 590 -410 { lab=Y}
N 590 -410 590 -370 { lab=Y}
N 570 -370 590 -370 { lab=Y}
N 540 -380 540 -370 { lab=VDD}
N 540 -410 540 -400 { lab=VSS}
N 540 -400 580 -400 { lab=VSS}
N 580 -400 580 -360 { lab=VSS}
N 500 -420 500 -380 { lab=VDD}
N 500 -380 540 -380 { lab=VDD}
N 540 -330 540 -280 { lab=SEL}
N 540 -520 540 -450 { lab=SELB}
N 590 -580 610 -580 { lab=Y}
N 610 -580 610 -480 { lab=Y}
N 590 -390 610 -390 { lab=Y}
N 610 -480 610 -390 { lab=Y}
N 610 -480 630 -480 { lab=Y}
N 220 -770 260 -770 { lab=VDD}
N 220 -710 260 -710 { lab=VSS}
N 710 -770 750 -770 { lab=VDD}
N 710 -740 750 -740 { lab=VSS}
N 270 -410 290 -410 { lab=VSS}
N 290 -410 290 -360 { lab=VSS}
N 270 -380 270 -360 { lab=VSS}
N 270 -470 270 -440 { lab=B}
N 230 -410 230 -360 { lab=VSS}
N 230 -360 290 -360 { lab=VSS}
N 270 -520 270 -490 { lab=B}
N 180 -520 180 -490 { lab=A}
N 270 -550 290 -550 { lab=#net1}
N 290 -600 290 -550 { lab=#net1}
N 270 -600 270 -580 { lab=#net1}
N 230 -600 230 -550 { lab=#net1}
N 180 -600 180 -580 { lab=#net1}
N 140 -600 140 -550 { lab=#net1}
N 180 -550 200 -550 { lab=#net1}
N 200 -600 200 -550 { lab=#net1}
N 140 -600 290 -600 { lab=#net1}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 540 -540 3 0 {name=M7
L=1
W=2
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 -620 3 1 {name=M8
L=1
W=2
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 450 -580 0 0 {name=p1 lab=A}
C {devices/ipin.sym} 450 -390 0 0 {name=p2 lab=B}
C {devices/ipin.sym} 210 -740 0 0 {name=p3 lab=SEL}
C {devices/lab_wire.sym} 470 -740 0 0 {name=l2 sig_type=std_logic lab=SELB}
C {devices/lab_wire.sym} 540 -660 0 0 {name=l3 sig_type=std_logic lab=SEL}
C {devices/lab_wire.sym} 540 -480 0 0 {name=l4 sig_type=std_logic lab=SELB}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 540 -350 3 0 {name=M1
L=1
W=2
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 -430 3 1 {name=M2
L=1
W=2
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 540 -290 0 0 {name=l8 sig_type=std_logic lab=SEL}
C {devices/opin.sym} 630 -480 0 0 {name=p4 lab=Y}
C {devices/lab_wire.sym} 250 -770 0 0 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 250 -710 0 0 {name=l9 sig_type=std_logic lab=VSS}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv1.sym} 310 -740 0 0 {name=x1}
C {devices/lab_wire.sym} 500 -610 0 0 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 580 -550 2 0 {name=l11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 580 -360 2 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 -420 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 710 -770 0 0 {name=p5 lab=VDD}
C {devices/ipin.sym} 710 -740 0 0 {name=p6 lab=VSS}
C {devices/lab_wire.sym} 720 -770 0 1 {name=l12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 720 -740 0 1 {name=l13 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 250 -410 0 0 {name=M3
L=1
W=2
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 270 -450 0 0 {name=l14 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 270 -360 0 0 {name=l15 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 250 -550 0 0 {name=M4
L=1
W=2
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_wire.sym} 270 -490 0 0 {name=l16 sig_type=std_logic lab=B}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 160 -550 0 0 {name=M5
L=1
W=2
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_wire.sym} 180 -490 0 0 {name=l17 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 230 -600 0 0 {name=l18 sig_type=std_logic lab=VDD}
