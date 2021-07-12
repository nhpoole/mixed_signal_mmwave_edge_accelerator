v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2030 -880 2030 -850 { lab=#net1}
N 2030 -980 2030 -940 { lab=VDD}
N 1570 -890 1610 -890 { lab=A}
N 2030 -910 2050 -910 { lab=VDD}
N 2050 -960 2050 -910 { lab=VDD}
N 2030 -960 2050 -960 { lab=VDD}
N 2030 -700 2030 -680 { lab=#net2}
N 2030 -730 2050 -730 { lab=GND}
N 2050 -730 2050 -680 { lab=GND}
N 1960 -820 1990 -820 { lab=A}
N 2030 -820 2050 -820 { lab=VDD}
N 2050 -910 2050 -820 { lab=VDD}
N 1570 -740 1610 -740 { lab=B}
N 1770 -890 1810 -890 { lab=Ab}
N 1770 -740 1810 -740 { lab=Bb}
N 2170 -880 2170 -850 { lab=#net3}
N 2170 -980 2170 -940 { lab=VDD}
N 2150 -910 2170 -910 { lab=VDD}
N 2150 -960 2150 -910 { lab=VDD}
N 2150 -960 2170 -960 { lab=VDD}
N 2210 -820 2240 -820 { lab=Ab}
N 2150 -820 2170 -820 { lab=VDD}
N 2150 -910 2150 -820 { lab=VDD}
N 1960 -910 1990 -910 { lab=Bb}
N 2030 -980 2170 -980 { lab=VDD}
N 2210 -910 2240 -910 { lab=B}
N 2170 -700 2170 -680 { lab=#net4}
N 2150 -730 2170 -730 { lab=GND}
N 2150 -730 2150 -680 { lab=GND}
N 2170 -790 2170 -760 { lab=Y}
N 2030 -790 2030 -760 { lab=Y}
N 2030 -780 2170 -780 { lab=Y}
N 2170 -780 2240 -780 { lab=Y}
N 2030 -620 2030 -600 { lab=GND}
N 2030 -650 2050 -650 { lab=GND}
N 2050 -650 2050 -600 { lab=GND}
N 2170 -620 2170 -600 { lab=GND}
N 2150 -650 2170 -650 { lab=GND}
N 2150 -650 2150 -600 { lab=GND}
N 2030 -600 2170 -600 { lab=GND}
N 2050 -680 2050 -650 { lab=GND}
N 2150 -680 2150 -650 { lab=GND}
N 1960 -650 1990 -650 { lab=A}
N 1960 -730 1990 -730 { lab=B}
N 2210 -650 2240 -650 { lab=Ab}
N 2210 -730 2240 -730 { lab=Bb}
C {devices/gnd.sym} 2030 -600 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 2010 -910 0 0 {name=M1
L=0.15
W=1
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/vdd.sym} 2030 -980 0 0 {name=l14 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 2010 -730 0 0 {name=M3
L=0.15
W=0.65
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 2010 -820 0 0 {name=M4
L=0.15
W=1
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/ipin.sym} 1570 -890 0 0 {name=p1 lab=A}
C {devices/opin.sym} 2240 -780 0 0 {name=p3 lab=Y}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 1660 -890 0 0 {name=x1 M=M}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 1660 -740 0 0 {name=x2 M=M}
C {devices/ipin.sym} 1570 -740 0 0 {name=p2 lab=B}
C {devices/lab_wire.sym} 1810 -890 0 0 {name=l3 sig_type=std_logic lab=Ab}
C {devices/lab_wire.sym} 1810 -740 0 0 {name=l4 sig_type=std_logic lab=Bb}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 2190 -910 0 1 {name=M5
L=0.15
W=1
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 2190 -820 0 1 {name=M6
L=0.15
W=1
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2190 -730 0 1 {name=M2
L=0.15
W=0.65
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2010 -650 0 0 {name=M7
L=0.15
W=0.65
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2190 -650 0 1 {name=M8
L=0.15
W=0.65
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 2240 -820 0 0 {name=l1 sig_type=std_logic lab=Ab}
C {devices/lab_wire.sym} 1980 -910 0 0 {name=l5 sig_type=std_logic lab=Bb}
C {devices/lab_wire.sym} 2240 -910 0 0 {name=l6 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1980 -820 0 0 {name=l7 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1980 -730 0 0 {name=l8 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1980 -650 0 0 {name=l9 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 2220 -730 0 1 {name=l10 sig_type=std_logic lab=Bb}
C {devices/lab_wire.sym} 2220 -650 0 1 {name=l11 sig_type=std_logic lab=Ab}
