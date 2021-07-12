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
N 310 -380 370 -380 { lab=vin1}
N 710 -220 750 -220 { lab=rst}
N 590 -160 670 -160 { lab=GND}
N 650 -220 670 -220 { lab=GND}
N 340 -340 370 -340 { lab=vpeak1}
N 340 -340 340 -280 { lab=vpeak1}
N 340 -280 590 -280 { lab=vpeak1}
N 590 -330 590 -250 { lab=vpeak1}
N 490 -360 550 -360 { lab=#net1}
N 590 -420 590 -390 { lab=VDD}
N 590 -360 610 -360 { lab=GND}
N 670 -190 670 -160 { lab=GND}
N 590 -190 590 -160 { lab=GND}
N 610 -360 610 -160 { lab=GND}
N 650 -220 650 -160 { lab=GND}
N 670 -280 670 -250 { lab=vpeak1}
N 590 -280 750 -280 { lab=vpeak1}
N 340 -800 400 -800 { lab=vin2}
N 370 -760 400 -760 { lab=vpeak_out}
N 710 -880 710 -860 { lab=VDD}
N 860 -880 860 -860 { lab=VDD}
N 690 -830 710 -830 { lab=VDD}
N 690 -880 690 -830 { lab=VDD}
N 860 -830 880 -830 { lab=VDD}
N 880 -880 880 -830 { lab=VDD}
N 770 -830 770 -780 { lab=#net2}
N 750 -830 820 -830 { lab=#net2}
N 710 -800 710 -780 { lab=#net2}
N 880 -690 900 -690 { lab=vpeak_out}
N 880 -690 880 -640 { lab=vpeak_out}
N 880 -640 1040 -640 { lab=vpeak_out}
N 1040 -710 1040 -640 { lab=vpeak_out}
N 1020 -710 1120 -710 { lab=vpeak_out}
N 680 -730 820 -730 { lab=vpeakh}
N 820 -730 880 -730 { lab=vpeakh}
N 880 -730 900 -730 { lab=vpeakh}
N 790 -680 830 -680 { lab=rst}
N 730 -680 750 -680 { lab=GND}
N 690 -880 880 -880 { lab=VDD}
N 750 -650 750 -630 { lab=GND}
N 750 -730 750 -710 { lab=vpeakh}
N 680 -650 680 -630 { lab=GND}
N 680 -630 750 -630 { lab=GND}
N 680 -730 680 -710 { lab=vpeakh}
N 880 -640 880 -600 { lab=vpeak_out}
N 860 -800 860 -730 { lab=vpeakh}
N 730 -680 730 -630 { lab=GND}
N 520 -780 770 -780 {}
N 370 -760 370 -600 {}
N 370 -600 880 -600 {}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 970 -330 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include peak_detector_commands.spice"}
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
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_opamp.sym} 420 -360 0 0 {name=x5}
C {devices/capa.sym} 590 -220 0 1 {name=C1
m=1
value='Cpeak'
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 340 -380 0 0 {name=l17 sig_type=std_logic lab=vin1}
C {sky130_fd_pr/nfet_01v8.sym} 690 -220 0 1 {name=M6
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
C {devices/lab_wire.sym} 720 -220 0 1 {name=l24 sig_type=std_logic lab=rst}
C {devices/gnd.sym} 630 -160 0 1 {name=l20 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 570 -360 0 0 {name=M1
L='Lpeak'
W='Wpeakn'
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
C {devices/vdd.sym} 590 -420 0 0 {name=l2 lab=VDD}
C {devices/lab_wire.sym} 700 -280 0 1 {name=l3 sig_type=std_logic lab=vpeak1}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_opamp.sym} 450 -780 2 1 {name=x1}
C {devices/capa.sym} 680 -680 0 1 {name=C2
m=1
value='Cpeak'
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 370 -800 0 0 {name=l4 sig_type=std_logic lab=vin2}
C {devices/gnd.sym} 720 -630 0 1 {name=l6 lab=GND}
C {devices/vdd.sym} 850 -880 0 0 {name=l7 lab=VDD}
C {devices/lab_wire.sym} 1040 -710 0 1 {name=l8 sig_type=std_logic lab=vpeak_out}
C {sky130_fd_pr/pfet_01v8.sym} 840 -830 0 0 {name=M3
L='Lpeak'
W='Wpeakp'
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 730 -830 0 1 {name=M4
L='Lpeak'
W='Wpeakp'
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_opamp.sym} 950 -710 0 0 {name=x2}
C {devices/lab_wire.sym} 790 -730 0 1 {name=l9 sig_type=std_logic lab=vpeakh}
C {sky130_fd_pr/nfet_01v8.sym} 770 -680 0 1 {name=M2
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
C {devices/lab_wire.sym} 800 -680 0 1 {name=l5 sig_type=std_logic lab=rst}
