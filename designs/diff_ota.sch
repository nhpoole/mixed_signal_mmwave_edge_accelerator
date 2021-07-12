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
T {ngspice_probe} -130 -430 0 0 0.2 0.2 {layer=4}
N 120 -720 120 -680 { lab=VDD}
N -170 -720 120 -720 { lab=VDD}
N -170 -720 -170 -680 { lab=VDD}
N 60 -420 120 -420 { lab=vtail}
N -110 -650 80 -650 { lab=vpbias}
N -250 -470 -210 -470 { lab=vip}
N 160 -470 200 -470 { lab=vim}
N -190 -280 -150 -280 { lab=vnbias}
N 1270 -590 1270 -560 { lab=vip}
N 1180 -590 1180 -560 { lab=vim}
N -30 -420 -30 -380 { lab=vtail}
N -130 -650 -110 -650 { lab=vpbias}
N -170 -620 -170 -590 { lab=vom}
N 120 -620 120 -580 { lab=vop}
N -30 -420 60 -420 { lab=vtail}
N -170 -420 -30 -420 { lab=vtail}
N -170 -470 120 -470 { lab=GND}
N -110 -280 -90 -280 { lab=GND}
N -90 -280 -90 -240 { lab=GND}
N 120 -650 140 -650 { lab=VDD}
N 140 -720 140 -650 { lab=VDD}
N 120 -720 140 -720 { lab=VDD}
N -190 -650 -170 -650 { lab=VDD}
N -190 -720 -190 -650 { lab=VDD}
N -190 -720 -170 -720 { lab=VDD}
N 40 -280 60 -280 { lab=GND}
N 40 -280 40 -240 { lab=GND}
N -110 -320 -110 -310 { lab=#net1}
N -110 -320 -30 -320 { lab=#net1}
N -30 -340 -30 -320 { lab=#net1}
N -30 -320 60 -320 { lab=#net1}
N 60 -320 60 -310 { lab=#net1}
N 60 -250 60 -230 { lab=GND}
N -110 -250 -110 -230 { lab=GND}
N -110 -230 60 -230 { lab=GND}
N 40 -240 40 -230 { lab=GND}
N -90 -240 -90 -230 { lab=GND}
N 120 -560 280 -560 { lab=vop}
N -310 -280 -190 -280 { lab=vnbias}
N -350 -340 -350 -310 { lab=vnbias}
N -350 -250 -350 -230 { lab=GND}
N -350 -230 -110 -230 { lab=GND}
N -350 -370 -350 -340 { lab=vnbias}
N -350 -720 -350 -430 { lab=VDD}
N -350 -720 -190 -720 { lab=VDD}
N -350 -330 -290 -330 { lab=vnbias}
N -290 -330 -290 -280 { lab=vnbias}
N -450 -720 -450 -680 { lab=VDD}
N -450 -720 -420 -720 { lab=VDD}
N -450 -620 -450 -530 { lab=vpbias}
N -450 -590 -390 -590 { lab=vpbias}
N -390 -650 -390 -590 { lab=vpbias}
N -450 -470 -450 -230 { lab=GND}
N -410 -650 -390 -650 { lab=vpbias}
N -420 -720 -350 -720 { lab=VDD}
N -470 -650 -450 -650 { lab=VDD}
N -470 -720 -470 -650 { lab=VDD}
N -470 -720 -450 -720 { lab=VDD}
N -450 -230 -350 -230 { lab=GND}
N -390 -700 -390 -650 { lab=vpbias}
N -390 -700 -30 -700 { lab=vpbias}
N -30 -700 -30 -650 { lab=vpbias}
N 1360 -590 1360 -560 { lab=vcm}
N -370 -280 -350 -280 { lab=GND}
N -370 -280 -370 -230 { lab=GND}
N 580 -470 640 -470 { lab=vcm}
N 470 -250 470 -230 { lab=GND}
N 470 -230 750 -230 { lab=GND}
N 750 -250 750 -230 { lab=GND}
N 600 -230 600 -210 { lab=GND}
N 400 -440 400 -420 { lab=vcmn_tail1}
N 400 -420 540 -420 { lab=vcmn_tail1}
N 540 -440 540 -420 { lab=vcmn_tail1}
N 680 -440 680 -420 { lab=vcmn_tail2}
N 680 -420 820 -420 { lab=vcmn_tail2}
N 820 -440 820 -420 { lab=vcmn_tail2}
N 540 -710 540 -680 { lab=VDD}
N 480 -650 500 -650 { lab=vcmcn1}
N 480 -650 480 -590 { lab=vcmcn1}
N 480 -590 540 -590 { lab=vcmcn1}
N 340 -650 360 -650 { lab=vcmcn}
N 340 -650 340 -590 { lab=vcmcn}
N 340 -590 400 -590 { lab=vcmcn}
N 400 -710 400 -680 { lab=VDD}
N 400 -620 400 -500 { lab=vcmcn}
N 400 -650 420 -650 { lab=VDD}
N 420 -710 420 -650 { lab=VDD}
N 540 -650 560 -650 { lab=VDD}
N 560 -710 560 -650 { lab=VDD}
N 400 -470 540 -470 { lab=GND}
N 680 -470 820 -470 { lab=GND}
N 730 -280 750 -280 { lab=GND}
N 730 -280 730 -230 { lab=GND}
N 450 -280 470 -280 { lab=GND}
N 450 -280 450 -230 { lab=GND}
N 450 -230 470 -230 { lab=GND}
N 990 -250 990 -230 { lab=GND}
N 930 -330 990 -330 { lab=vnbiascm}
N 930 -330 930 -280 { lab=vnbiascm}
N 990 -280 1010 -280 { lab=GND}
N 1010 -280 1010 -230 { lab=GND}
N 750 -230 1010 -230 { lab=GND}
N 790 -280 950 -280 { lab=vnbiascm}
N 510 -280 550 -280 { lab=vnbiascm}
N 550 -330 550 -280 { lab=vnbiascm}
N 550 -330 860 -330 { lab=vnbiascm}
N 860 -330 860 -280 { lab=vnbiascm}
N 320 -470 360 -470 { lab=vop}
N 860 -470 900 -470 { lab=vom}
N 140 -720 990 -720 { lab=VDD}
N 990 -720 990 -490 { lab=VDD}
N 560 -720 560 -710 { lab=VDD}
N 540 -720 540 -710 { lab=VDD}
N 420 -720 420 -710 { lab=VDD}
N 400 -720 400 -710 { lab=VDD}
N -170 -590 -170 -500 { lab=vom}
N 120 -580 120 -500 { lab=vop}
N 120 -440 120 -420 { lab=vtail}
N -170 -440 -170 -420 { lab=vtail}
N 60 -230 450 -230 { lab=GND}
N 990 -430 990 -310 { lab=vnbiascm}
N 750 -420 750 -310 { lab=vcmn_tail2}
N 470 -420 470 -310 { lab=vcmn_tail1}
N 270 -250 270 -230 { lab=GND}
N 210 -330 270 -330 { lab=vcmc}
N 210 -330 210 -280 { lab=vcmc}
N 270 -280 290 -280 { lab=GND}
N 290 -280 290 -230 { lab=GND}
N 100 -280 230 -280 { lab=vcmc}
N 270 -710 270 -680 { lab=VDD}
N 250 -650 270 -650 { lab=VDD}
N 250 -710 250 -650 { lab=VDD}
N 270 -720 270 -710 { lab=VDD}
N 250 -720 250 -710 { lab=VDD}
N 310 -650 340 -650 { lab=vcmcn}
N 270 -620 270 -310 { lab=vcmc}
N 540 -620 540 -500 { lab=vcmcn1}
N 680 -710 680 -680 { lab=VDD}
N 720 -650 740 -650 { lab=vcmcn2}
N 740 -650 740 -590 { lab=vcmcn2}
N 680 -590 740 -590 { lab=vcmcn2}
N 660 -650 680 -650 { lab=VDD}
N 660 -710 660 -650 { lab=VDD}
N 660 -720 660 -710 { lab=VDD}
N 680 -720 680 -710 { lab=VDD}
N 680 -620 680 -500 { lab=vcmcn2}
N 820 -550 820 -500 { lab=vcmcn}
N 400 -550 820 -550 { lab=vcmcn}
N 280 -560 300 -560 { lab=vop}
N 300 -560 300 -470 { lab=vop}
N 300 -470 320 -470 { lab=vop}
N -170 -540 900 -540 { lab=vom}
N 900 -540 900 -470 { lab=vom}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 1320 -260 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include diff_ota_commands.spice"}
C {devices/code.sym} 1320 -410 0 0 {name=TT_MODELS
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
C {devices/ipin.sym} 200 -470 0 1 {name=p1 sig_type=std_logic lab=vim}
C {devices/ngspice_probe.sym} -120 -420 0 0 {name=r2}
C {devices/ngspice_get_expr.sym} 1250 -260 0 1 {name=r4 node="[format %.4g [expr [ngspice::get_node \{i(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[id])\}] * [ngspice::get_voltage s] ] ]"
descr="power [W]"}
C {devices/ngspice_get_value.sym} 1250 -320 0 1 {name=r3 node=i(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[id])
descr="Id="}
C {devices/ngspice_probe.sym} -180 -280 0 0 {name=r5}
C {devices/ngspice_probe.sym} -240 -470 0 0 {name=r6}
C {devices/ngspice_probe.sym} 180 -470 0 0 {name=r7}
C {devices/ngspice_get_value.sym} 1250 -370 0 1 {name=r8 node=@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {devices/vsource.sym} 1270 -530 0 0 {name=V1 value="dc 'vincm+vsig/2' ac 0.5 0" only_toplevel=true}
C {devices/gnd.sym} 1270 -500 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 1270 -590 0 1 {name=l10 sig_type=std_logic lab=vip}
C {devices/vsource.sym} 1090 -530 0 0 {name=V3 value='vdd' only_toplevel=true}
C {devices/gnd.sym} 1090 -500 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 1090 -560 0 0 {name=l14 lab=VDD}
C {devices/vsource.sym} 1180 -530 0 0 {name=V4 value="dc 'vincm-vsig/2' ac 0.5 180" only_toplevel=true}
C {devices/gnd.sym} 1180 -500 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1180 -590 0 1 {name=l6 sig_type=std_logic lab=vim}
C {devices/ngspice_get_expr.sym} 1070 -530 0 1 {name=r10 node="[ngspice::get_current v3]"}
C {devices/ngspice_get_expr.sym} -60 -340 0 1 {name=r11 node="[ngspice::get_current V5]"}
C {devices/vsource.sym} -30 -370 0 0 {name=V5 value=0}
C {sky130_fd_pr/pfet_01v8.sym} 100 -650 0 0 {name=M6
L=0.8
W='Wp'
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
C {sky130_fd_pr/pfet_01v8.sym} -150 -650 0 1 {name=M3
L=0.8
W='Wp'
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
C {devices/gnd.sym} -30 -470 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -130 -280 0 0 {name=M2
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
C {devices/lab_pin.sym} 120 -580 0 1 {name=l15 sig_type=std_logic lab=vop}
C {devices/lab_pin.sym} -170 -580 0 0 {name=l16 sig_type=std_logic lab=vom}
C {devices/lab_wire.sym} -30 -420 0 0 {name=l4 sig_type=std_logic lab=vtail}
C {devices/ngspice_probe.sym} 130 -280 0 1 {name=r1}
C {sky130_fd_pr/nfet_01v8.sym} 80 -280 0 1 {name=M13
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
C {devices/lab_wire.sym} 190 -280 0 0 {name=l2 sig_type=std_logic lab=vcmc}
C {devices/isource.sym} -350 -400 0 0 {name=I0 value='Itail'}
C {sky130_fd_pr/nfet_01v8.sym} -330 -280 0 1 {name=M14
L=1.2
W=0.7
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
C {devices/isource.sym} -450 -500 0 1 {name=I2 value='Itail/2'}
C {sky130_fd_pr/pfet_01v8.sym} -430 -650 0 1 {name=M16
L=0.8
W='Wp'
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
C {devices/vsource.sym} 1360 -530 0 0 {name=V2 value='vcmdes' only_toplevel=true}
C {devices/gnd.sym} 1360 -500 0 0 {name=l7 lab=GND}
C {devices/ngspice_get_expr.sym} 1340 -530 0 1 {name=r9 node="[ngspice::get_current v3]"}
C {devices/lab_pin.sym} 1360 -590 0 1 {name=l11 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} -450 -550 0 0 {name=l18 sig_type=std_logic lab=vpbias}
C {devices/lab_wire.sym} -200 -280 0 0 {name=l23 sig_type=std_logic lab=vnbias}
C {devices/lab_wire.sym} 630 -470 0 0 {name=l27 sig_type=std_logic lab=vcm}
C {sky130_fd_pr/nfet_01v8.sym} 490 -280 0 1 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 770 -280 0 1 {name=M22
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
C {devices/gnd.sym} 600 -210 0 0 {name=l28 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 520 -650 0 0 {name=M23
L=0.8
W='Wp'
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
C {sky130_fd_pr/pfet_01v8.sym} 380 -650 0 0 {name=M24
L=0.8
W='Wp'
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
C {devices/gnd.sym} 750 -470 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 470 -470 0 0 {name=l31 lab=GND}
C {devices/isource.sym} 990 -460 0 1 {name=I3 value='Itail'}
C {sky130_fd_pr/nfet_01v8.sym} 970 -280 0 0 {name=M26
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
C {devices/lab_wire.sym} 910 -280 0 0 {name=l34 sig_type=std_logic lab=vnbiascm}
C {devices/lab_wire.sym} 540 -520 0 0 {name=l35 sig_type=std_logic lab=vcmcn1}
C {devices/lab_wire.sym} 400 -550 0 0 {name=l38 sig_type=std_logic lab=vcmcn}
C {devices/lab_wire.sym} 470 -400 0 0 {name=l39 sig_type=std_logic lab=vcmn_tail1}
C {devices/lab_wire.sym} 750 -400 0 0 {name=l40 sig_type=std_logic lab=vcmn_tail2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 380 -470 0 0 {name=M20
L=0.3
W='Wn_cm'
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -470 0 1 {name=M17
L=0.3
W='Wn_cm'
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 840 -470 0 1 {name=M18
L=0.3
W='Wn_cm'
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 660 -470 0 0 {name=M19
L=0.3
W='Wn_cm'
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -190 -470 0 0 {name=M4
L=0.3
W='Wn'
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 -470 0 1 {name=M1
L=0.3
W='Wn'
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
C {sky130_fd_pr/nfet_01v8.sym} 250 -280 0 0 {name=M29
L=1.2
W=0.7
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
C {sky130_fd_pr/pfet_01v8.sym} 290 -650 0 1 {name=M30
L=0.8
W='Wp'
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
C {sky130_fd_pr/pfet_01v8.sym} 700 -650 0 1 {name=M25
L=0.8
W='Wp'
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
C {devices/lab_wire.sym} 680 -520 0 1 {name=l29 sig_type=std_logic lab=vcmcn2}
