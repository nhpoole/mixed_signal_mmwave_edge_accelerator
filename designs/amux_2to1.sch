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
N 540 -600 540 -590 { lab=GND}
N 540 -590 580 -590 { lab=GND}
N 580 -590 580 -550 { lab=GND}
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
N 540 -410 540 -400 { lab=GND}
N 540 -400 580 -400 { lab=GND}
N 580 -400 580 -360 { lab=GND}
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
N 220 -710 260 -710 { lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 760 -530 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
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
C {devices/vdd.sym} 500 -610 0 0 {name=l121 lab=VDD}
C {devices/gnd.sym} 580 -550 0 0 {name=l122 lab=GND}
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
C {devices/vdd.sym} 500 -420 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 580 -360 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 540 -290 0 0 {name=l8 sig_type=std_logic lab=SEL}
C {devices/opin.sym} 630 -480 0 0 {name=p4 lab=Y}
C {devices/vdd.sym} 220 -770 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 220 -710 0 0 {name=l9 lab=GND}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv1.sym} 310 -740 0 0 {name=x1}
