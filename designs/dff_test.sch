v {xschem version=2.9.9 file_version=1.2 

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N -600 -190 -600 -170 { lab=GND}
N -600 -220 -580 -220 { lab=GND}
N -580 -220 -580 -170 { lab=GND}
N -620 -550 -600 -550 { lab=VDD}
N -600 -600 -600 -580 { lab=VDD}
N -620 -600 -620 -550 { lab=VDD}
N -710 -220 -640 -220 { lab=vctrl}
N -660 -270 -660 -220 { lab=vctrl}
N -540 -550 -540 -500 { lab=vpbias}
N -600 -500 -540 -500 { lab=vpbias}
N -600 -520 -600 -420 { lab=vpbias}
N -600 -360 -600 -250 { lab=#net1}
N 580 -440 600 -440 { lab=VDD}
N 580 -410 580 -360 { lab=vin}
N 580 -330 600 -330 { lab=GND}
N 520 -440 520 -380 { lab=#net2}
N 520 -440 540 -440 { lab=#net2}
N 520 -380 520 -330 { lab=#net2}
N 520 -330 540 -330 { lab=#net2}
N -560 -550 -540 -550 { lab=vpbias}
N -540 -500 -540 -410 { lab=vpbias}
N -540 -410 -500 -410 { lab=vpbias}
N -660 -270 -540 -270 { lab=vctrl}
N -540 -370 -540 -270 { lab=vctrl}
N -540 -370 -500 -370 { lab=vctrl}
N -370 -390 -330 -390 { lab=#net3}
N -200 -390 -160 -390 { lab=#net4}
N -30 -390 10 -390 { lab=#net5}
N 140 -390 180 -390 { lab=#net6}
N 310 -390 350 -390 { lab=#net7}
N 480 -390 520 -390 { lab=#net2}
N 580 -600 580 -470 { lab=VDD}
N 600 -600 600 -440 { lab=VDD}
N 580 -300 580 -170 { lab=GND}
N 600 -330 600 -170 { lab=GND}
N -540 -500 320 -500 { lab=vpbias}
N 320 -500 320 -410 { lab=vpbias}
N 320 -410 350 -410 { lab=vpbias}
N -540 -270 320 -270 { lab=vctrl}
N 320 -370 320 -270 { lab=vctrl}
N 320 -370 350 -370 { lab=vctrl}
N 150 -410 180 -410 { lab=vpbias}
N 150 -500 150 -410 { lab=vpbias}
N 150 -370 180 -370 { lab=vctrl}
N 150 -370 150 -270 { lab=vctrl}
N -20 -410 10 -410 { lab=vpbias}
N -20 -500 -20 -410 { lab=vpbias}
N -20 -370 10 -370 { lab=vctrl}
N -20 -370 -20 -270 { lab=vctrl}
N -190 -370 -160 -370 { lab=vctrl}
N -190 -370 -190 -270 { lab=vctrl}
N -190 -410 -160 -410 { lab=vpbias}
N -190 -500 -190 -410 { lab=vpbias}
N -360 -410 -330 -410 { lab=vpbias}
N -360 -500 -360 -410 { lab=vpbias}
N -360 -370 -330 -370 { lab=vctrl}
N -360 -370 -360 -270 { lab=vctrl}
N -560 -390 -500 -390 { lab=vin}
N -560 -390 -560 -250 { lab=vin}
N -560 -250 620 -250 { lab=vin}
N 620 -390 620 -250 { lab=vin}
N 580 -390 620 -390 { lab=vin}
N -40 -250 -40 -240 { lab=vin}
N -40 -180 -40 -170 { lab=GND}
N 720 -440 740 -440 { lab=VDD}
N 720 -410 720 -360 { lab=vin2}
N 720 -330 740 -330 { lab=GND}
N 660 -440 660 -380 { lab=vin}
N 660 -440 680 -440 { lab=vin}
N 660 -380 660 -330 { lab=vin}
N 660 -330 680 -330 { lab=vin}
N 720 -600 720 -470 { lab=VDD}
N 740 -600 740 -440 { lab=VDD}
N 720 -300 720 -170 { lab=GND}
N 740 -330 740 -170 { lab=GND}
N 860 -440 880 -440 { lab=VDD}
N 860 -410 860 -360 { lab=vin_buf}
N 860 -330 880 -330 { lab=GND}
N 800 -440 800 -380 { lab=vin2}
N 800 -440 820 -440 { lab=vin2}
N 800 -380 800 -330 { lab=vin2}
N 800 -330 820 -330 { lab=vin2}
N 860 -600 860 -470 { lab=VDD}
N 880 -600 880 -440 { lab=VDD}
N 860 -300 860 -170 { lab=GND}
N 880 -330 880 -170 { lab=GND}
N 860 -390 900 -390 { lab=vin_buf}
N -620 -600 880 -600 { lab=VDD}
N -600 -170 880 -170 { lab=GND}
N 720 -390 800 -390 { lab=vin2}
N 620 -390 660 -390 { lab=vin}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 1120 -360 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include dff_test_commands.spice"}
C {devices/code.sym} 1120 -510 0 0 {name=TT_MODELS
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
* Standard cells
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfxbp/sky130_fd_sc_hd__dfxbp_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfxbp/sky130_fd_sc_hd__dfxbp_2.spice
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
C {devices/vdd.sym} -30 -600 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -600 -390 0 0 {name=V1 value=0}
C {sky130_fd_pr/nfet_01v8.sym} -620 -220 0 0 {name=M6
L='Lnmos'
W='Wnbias'
nf=1 
mult='Mnmos'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -40 -170 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -680 -220 0 0 {name=l2 sig_type=std_logic lab=vctrl}
C {devices/lab_wire.sym} -520 -390 0 0 {name=l5 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} -600 -450 0 0 {name=l8 sig_type=std_logic lab=vpbias}
C {sky130_fd_pr/pfet_01v8_hvt.sym} -580 -550 0 1 {name=M3
L='Lpmos'
W='Wpbias'
nf=1
mult='Mpmos'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/cs_ring_osc_stage.sym} -440 -390 0 0 {name=x1}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/cs_ring_osc_stage.sym} -270 -390 0 0 {name=x2}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/cs_ring_osc_stage.sym} -100 -390 0 0 {name=x3}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/cs_ring_osc_stage.sym} 70 -390 0 0 {name=x4}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/cs_ring_osc_stage.sym} 240 -390 0 0 {name=x5}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/cs_ring_osc_stage.sym} 410 -390 0 0 {name=x6}
C {sky130_fd_pr/nfet_01v8.sym} 560 -330 0 0 {name=M21
L='Lnmos'
W='Wninv'
nf=1
mult='Mnmos'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 560 -440 0 0 {name=M22
L='Lpmos'
W='Wpinv'
nf=1
mult='Mpmos'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/capa.sym} -40 -210 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 700 -330 0 0 {name=M1
L=0.15
W=0.65
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 700 -440 0 0 {name=M2
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 840 -330 0 0 {name=M4
L=0.15
W=0.65
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 840 -440 0 0 {name=M5
L=0.15
W=1
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
C {devices/lab_wire.sym} 870 -390 0 1 {name=l4 sig_type=std_logic lab=vin_buf}
C {devices/lab_wire.sym} 740 -390 0 1 {name=l14 sig_type=std_logic lab=vin2}
