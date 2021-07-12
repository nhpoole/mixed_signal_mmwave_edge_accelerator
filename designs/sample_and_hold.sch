v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 510 -270 600 -270 { lab=vholdp}
N 440 -310 600 -310 { lab=vhold}
N 570 -380 630 -380 { lab=vhold}
N 570 -380 570 -310 { lab=vhold}
N 240 -310 380 -310 { lab=vint}
N 310 -310 310 -240 { lab=vint}
N 100 -330 120 -330 { lab=vout}
N 100 -430 100 -330 { lab=vout}
N 720 -290 800 -290 { lab=vout}
N 690 -380 740 -380 { lab=vout}
N 100 -430 740 -430 { lab=vout}
N 740 -430 740 -290 { lab=vout}
N 60 -290 120 -290 { lab=vin}
N 310 -740 310 -720 { lab=clk}
N 310 -740 330 -740 { lab=clk}
N 310 -720 310 -700 { lab=clk}
N 310 -700 330 -700 { lab=clk}
N 390 -740 410 -740 { lab=#net1}
N 410 -740 410 -700 { lab=#net1}
N 390 -700 410 -700 { lab=#net1}
N 360 -710 360 -700 { lab=VDD}
N 360 -740 360 -730 { lab=GND}
N 360 -710 430 -710 { lab=VDD}
N 300 -730 360 -730 { lab=GND}
N 360 -660 360 -650 { lab=GND}
N 430 -800 430 -710 { lab=VDD}
N 360 -790 360 -780 { lab=VDD}
N 360 -790 430 -790 { lab=VDD}
N 300 -650 360 -650 { lab=GND}
N 300 -730 300 -640 { lab=GND}
N 410 -720 460 -720 { lab=#net1}
N 440 -550 460 -550 { lab=#net2}
N 250 -550 280 -550 { lab=clk}
N 250 -720 250 -550 { lab=clk}
N 250 -720 310 -720 { lab=clk}
N 190 -640 250 -640 { lab=clk}
N 620 -720 690 -720 { lab=phib}
N 620 -550 690 -550 { lab=phi}
N 430 -210 470 -210 { lab=phi}
N 410 -390 410 -350 { lab=phi}
N 220 -210 270 -210 { lab=phib}
N 310 -210 330 -210 { lab=GND}
N 510 -210 530 -210 { lab=GND}
N 410 -310 410 -150 { lab=GND}
N 330 -210 330 -150 { lab=GND}
N 530 -210 530 -150 { lab=GND}
N 330 -150 530 -150 { lab=GND}
N 310 -180 310 -160 { lab=vcm}
N 310 -160 570 -160 { lab=vcm}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 970 -330 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include sample_and_hold_commands.spice"}
C {devices/code.sym} 970 -480 0 0 {name=TT_MODELS
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
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_opamp.sym} 170 -310 0 0 {name=x10}
C {sky130_fd_pr/nfet_01v8.sym} 290 -210 0 0 {name=M1
L=0.15
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 430 -150 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 410 -330 1 0 {name=M2
L=0.15
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_opamp.sym} 650 -290 2 1 {name=x1}
C {sky130_fd_pr/nfet_01v8.sym} 490 -210 0 0 {name=M3
L=0.15
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/capa.sym} 570 -210 0 0 {name=C1
m=1
value='Chold'
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 660 -380 3 0 {name=C2
m=1
value='Chold'
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 760 -290 0 1 {name=l3 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 90 -290 0 0 {name=l4 sig_type=std_logic lab=vin}
C {devices/vdd.sym} 430 -800 0 0 {name=l16 lab=VDD}
C {devices/gnd.sym} 300 -640 0 1 {name=l26 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 360 -680 3 0 {name=M13
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 360 -760 1 0 {name=M15
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 510 -720 0 0 {name=x2 M=1}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 510 -550 0 0 {name=x3 M=1}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv.sym} 330 -550 0 0 {name=x4 M=1}
C {devices/lab_wire.sym} 220 -640 0 0 {name=l5 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 680 -720 0 0 {name=l6 sig_type=std_logic lab=phib}
C {devices/lab_wire.sym} 680 -550 0 0 {name=l7 sig_type=std_logic lab=phi}
C {devices/lab_wire.sym} 410 -370 0 0 {name=l8 sig_type=std_logic lab=phi}
C {devices/lab_wire.sym} 460 -210 0 0 {name=l9 sig_type=std_logic lab=phi}
C {devices/lab_wire.sym} 260 -210 0 0 {name=l10 sig_type=std_logic lab=phib}
C {devices/lab_wire.sym} 260 -310 0 1 {name=l11 sig_type=std_logic lab=vint}
C {devices/lab_wire.sym} 510 -310 0 1 {name=l12 sig_type=std_logic lab=vhold}
C {devices/lab_wire.sym} 510 -270 0 1 {name=l13 sig_type=std_logic lab=vholdp}
C {devices/lab_wire.sym} 390 -160 0 0 {name=l14 sig_type=std_logic lab=vcm}
