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
N 180 -720 180 -680 { lab=VDD}
N -180 -720 -180 -680 { lab=VDD}
N 0 -420 0 -380 { lab=vtail}
N -180 -620 -180 -590 { lab=vcompm}
N 180 -620 180 -580 { lab=vcompp}
N 0 -280 20 -280 { lab=GND}
N 20 -280 20 -240 { lab=GND}
N 180 -650 200 -650 { lab=VDD}
N 200 -720 200 -650 { lab=VDD}
N -200 -650 -180 -650 { lab=VDD}
N -200 -720 -200 -650 { lab=VDD}
N 0 -250 0 -230 { lab=GND}
N 20 -240 20 -230 { lab=GND}
N -480 -340 -480 -310 { lab=vnbias}
N -480 -250 -480 -230 { lab=GND}
N -480 -370 -480 -340 { lab=vnbias}
N -480 -720 -480 -430 { lab=VDD}
N -480 -330 -420 -330 { lab=vnbias}
N -420 -330 -420 -280 { lab=vnbias}
N -500 -280 -480 -280 { lab=GND}
N -500 -280 -500 -230 { lab=GND}
N -180 -590 -180 -500 { lab=vcompm}
N 180 -580 180 -500 { lab=vcompp}
N 180 -440 180 -420 { lab=vtail}
N -180 -440 -180 -420 { lab=vtail}
N 100 -650 140 -650 { lab=vcompp}
N -140 -650 -100 -650 { lab=vcompm}
N -180 -470 180 -470 { lab=GND}
N -0 -420 180 -420 { lab=vtail}
N -180 -420 0 -420 { lab=vtail}
N -0 -340 -0 -310 { lab=#net1}
N -60 -620 -60 -600 { lab=vcompp}
N -60 -600 60 -560 { lab=vcompp}
N 60 -560 180 -560 { lab=vcompp}
N 60 -620 60 -600 { lab=vcompm}
N -60 -560 60 -600 { lab=vcompm}
N -180 -560 -60 -560 { lab=vcompm}
N -120 -650 -120 -600 { lab=vcompm}
N -180 -600 -120 -600 { lab=vcompm}
N 120 -650 120 -600 { lab=vcompp}
N 120 -600 180 -600 { lab=vcompp}
N -250 -470 -220 -470 { lab=vip}
N 220 -470 250 -470 { lab=vim}
N 310 -530 310 -360 { lab=#net2}
N 310 -720 310 -590 { lab=VDD}
N 310 -300 310 -230 { lab=GND}
N 310 -330 330 -330 { lab=GND}
N 330 -330 330 -230 { lab=GND}
N 180 -560 270 -560 { lab=vcompp}
N -310 -530 -310 -360 { lab=vmirror}
N -310 -720 -310 -590 { lab=VDD}
N -310 -300 -310 -230 { lab=GND}
N -330 -330 -310 -330 { lab=GND}
N -330 -330 -330 -230 { lab=GND}
N -330 -560 -310 -560 { lab=VDD}
N -330 -720 -330 -560 { lab=VDD}
N 310 -560 330 -560 { lab=VDD}
N 330 -720 330 -560 { lab=VDD}
N -270 -560 -180 -560 { lab=vcompm}
N -270 -330 270 -330 { lab=vmirror}
N -310 -390 -250 -390 { lab=vmirror}
N -250 -390 -250 -330 { lab=vmirror}
N -60 -720 -60 -680 { lab=VDD}
N -60 -650 -40 -650 { lab=VDD}
N -40 -720 -40 -650 { lab=VDD}
N 60 -720 60 -680 { lab=VDD}
N 40 -650 60 -650 { lab=VDD}
N 40 -720 40 -650 { lab=VDD}
N 430 -530 430 -360 { lab=vo}
N 430 -300 430 -230 { lab=GND}
N 430 -330 450 -330 { lab=GND}
N 450 -330 450 -230 { lab=GND}
N 430 -560 450 -560 { lab=VDD}
N 450 -720 450 -560 { lab=VDD}
N 430 -720 430 -590 { lab=VDD}
N -440 -280 -40 -280 { lab=vnbias}
N -480 -720 450 -720 { lab=VDD}
N -500 -230 450 -230 { lab=GND}
N 310 -450 370 -450 { lab=#net2}
N 370 -560 370 -450 { lab=#net2}
N 370 -560 390 -560 { lab=#net2}
N 370 -330 390 -330 { lab=#net2}
N 370 -450 370 -330 { lab=#net2}
N 430 -450 450 -450 { lab=vo}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 610 -340 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include comparator_commands.spice"}
C {devices/code.sym} 610 -490 0 0 {name=TT_MODELS
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
C {devices/vdd.sym} 0 -720 0 0 {name=l3 lab=VDD}
C {devices/ipin.sym} -250 -470 0 0 {name=p4 sig_type=std_logic lab=vip}
C {devices/ipin.sym} 250 -470 0 1 {name=p1 sig_type=std_logic lab=vim}
C {devices/vsource.sym} 0 -370 0 0 {name=V5 value=0}
C {sky130_fd_pr/pfet_01v8.sym} 160 -650 0 0 {name=M6
L=0.8
W='Wp_comp'
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
C {sky130_fd_pr/pfet_01v8.sym} -160 -650 0 1 {name=M3
L=0.8
W='Wp_comp'
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
C {devices/gnd.sym} 0 -470 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -20 -280 0 0 {name=M2
L=1.2
W=0.7
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
C {devices/lab_wire.sym} 0 -420 0 0 {name=l4 sig_type=std_logic lab=vtail}
C {devices/isource.sym} -480 -400 0 0 {name=I0 value='Ibias_comp'}
C {sky130_fd_pr/nfet_01v8.sym} -460 -280 0 1 {name=M14
L=1.2
W=0.7
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
C {devices/lab_wire.sym} -360 -280 0 0 {name=l23 sig_type=std_logic lab=vnbias}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -200 -470 0 0 {name=M4
L=0.3
W='Wn_comp'
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 200 -470 0 1 {name=M1
L=0.3
W='Wn_comp'
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
C {devices/gnd.sym} 0 -230 0 0 {name=l12 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -80 -650 0 0 {name=M5
L=0.8
W='Wp_comp'
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -650 0 1 {name=M7
L=0.8
W='Wp_comp'
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
C {sky130_fd_pr/pfet_01v8.sym} 290 -560 0 0 {name=M8
L=0.8
W='Wp_comp'
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
C {sky130_fd_pr/nfet_01v8.sym} 290 -330 0 0 {name=M9
L=1.2
W=0.7
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
C {sky130_fd_pr/pfet_01v8.sym} -290 -560 0 1 {name=M10
L=0.8
W='Wp_comp'
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
C {sky130_fd_pr/nfet_01v8.sym} -290 -330 0 1 {name=M11
L=1.2
W=0.7
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
C {devices/lab_wire.sym} 180 -560 0 0 {name=l2 sig_type=std_logic lab=vcompp}
C {devices/lab_wire.sym} -180 -560 0 1 {name=l7 sig_type=std_logic lab=vcompm}
C {devices/lab_wire.sym} 200 -330 0 0 {name=l11 sig_type=std_logic lab=vmirror}
C {sky130_fd_pr/nfet_01v8.sym} 410 -330 0 0 {name=M13
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 410 -560 0 0 {name=M15
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
C {devices/opin.sym} 450 -450 0 0 {name=p2 lab=vo}
