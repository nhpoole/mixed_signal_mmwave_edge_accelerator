v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 690 -160 770 -160 { lab=vout}
N 250 -180 310 -180 { lab=vin}
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
N 340 -260 340 -220 { lab=phi}
N 510 -140 570 -140 { lab=vcm}
N 620 -340 620 -300 { lab=clk}
N 470 -180 570 -180 { lab=vhold}
N 620 -260 620 -250 { lab=GND}
N 340 -180 340 -170 { lab=GND}
N 550 -260 590 -260 { lab=vhold}
N 550 -260 550 -180 { lab=vhold}
N 650 -260 710 -260 { lab=vout}
N 710 -260 710 -160 { lab=vout}
N 550 -460 550 -420 { lab=phib}
N 550 -380 550 -370 { lab=GND}
N 710 -380 710 -260 { lab=vout}
N 370 -180 410 -180 { lab=#net3}
N 390 -380 390 -180 { lab=#net3}
N 580 -380 710 -380 { lab=vout}
N 390 -380 520 -380 { lab=#net3}
N 30 -390 110 -390 { lab=vout2}
N -410 -410 -350 -410 { lab=vin}
N -320 -490 -320 -450 { lab=clk}
N -150 -370 -90 -370 { lab=#net4}
N -320 -410 -320 -400 { lab=GND}
N 110 -390 110 -380 { lab=vout2}
N -230 -410 -230 -400 { lab=vhold2}
N -290 -410 -90 -410 { lab=vhold2}
N -320 -360 -320 -320 { lab=clk}
N -320 -280 -320 -270 { lab=GND}
N -150 -370 -150 -280 { lab=#net4}
N -290 -280 -60 -280 { lab=#net4}
N 50 -390 50 -280 { lab=vout2}
N -0 -280 50 -280 { lab=vout2}
N -370 -280 -350 -280 { lab=vout2}
N -370 -280 -370 -220 { lab=vout2}
N -370 -220 50 -220 { lab=vout2}
N 50 -280 50 -220 { lab=vout2}
N 770 -160 770 -150 { lab=vout}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 970 -330 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include sample_and_hold_open_loop_commands.spice"}
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
C {sky130_fd_pr/nfet_01v8.sym} 340 -200 1 0 {name=M2
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
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_opamp.sym} 620 -160 2 1 {name=x1}
C {devices/capa.sym} 440 -180 3 0 {name=C2
m=1
value='Chold'
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 730 -160 0 1 {name=l3 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 280 -180 0 0 {name=l4 sig_type=std_logic lab=vin}
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
C {devices/lab_wire.sym} 340 -240 0 0 {name=l8 sig_type=std_logic lab=phi}
C {devices/lab_wire.sym} 490 -180 0 1 {name=l12 sig_type=std_logic lab=vhold}
C {devices/lab_wire.sym} 510 -140 0 1 {name=l13 sig_type=std_logic lab=vcm}
C {sky130_fd_pr/nfet_01v8.sym} 620 -280 1 0 {name=M1
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
C {devices/lab_wire.sym} 620 -320 0 0 {name=l2 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 340 -170 0 1 {name=l9 lab=GND}
C {devices/gnd.sym} 620 -250 0 1 {name=l10 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 550 -400 1 0 {name=M3
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
C {devices/lab_wire.sym} 550 -440 0 0 {name=l11 sig_type=std_logic lab=phib}
C {devices/gnd.sym} 550 -370 0 1 {name=l14 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -320 -430 1 0 {name=M4
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
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_opamp.sym} -40 -390 0 0 {name=x5}
C {devices/capa.sym} -230 -370 0 0 {name=C1
m=1
value='Chold'
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 70 -390 0 1 {name=l15 sig_type=std_logic lab=vout2}
C {devices/lab_wire.sym} -380 -410 0 0 {name=l17 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} -320 -470 0 0 {name=l18 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} -170 -410 0 1 {name=l19 sig_type=std_logic lab=vhold2}
C {devices/gnd.sym} -320 -400 0 1 {name=l22 lab=GND}
C {devices/capa.sym} 110 -350 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 110 -320 0 1 {name=l27 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -320 -300 1 0 {name=M6
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
C {devices/lab_wire.sym} -320 -340 0 0 {name=l24 sig_type=std_logic lab=clk}
C {devices/gnd.sym} -320 -270 0 1 {name=l25 lab=GND}
C {devices/capa.sym} -30 -280 3 0 {name=C4
m=1
value='Chold'
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -230 -340 0 1 {name=l20 lab=GND}
C {devices/capa.sym} 770 -120 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 770 -90 0 1 {name=l21 lab=GND}
