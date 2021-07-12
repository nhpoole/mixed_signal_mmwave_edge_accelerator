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
N 530 -330 610 -330 { lab=vout}
N 90 -350 150 -350 { lab=vin}
N 180 -430 180 -390 { lab=clk}
N 350 -310 410 -310 { lab=vholdm}
N 180 -350 180 -340 { lab=VSS}
N 270 -350 270 -340 { lab=vhold}
N 210 -350 410 -350 { lab=vhold}
N 180 -300 180 -260 { lab=clk}
N 350 -310 350 -220 { lab=vholdm}
N 210 -220 440 -220 { lab=vholdm}
N 550 -330 550 -220 { lab=vout}
N 500 -220 550 -220 { lab=vout}
N 130 -220 150 -220 { lab=vout}
N 130 -220 130 -160 { lab=vout}
N 130 -160 550 -160 { lab=vout}
N 550 -220 550 -160 { lab=vout}
N 180 -340 180 -330 { lab=VSS}
N 180 -220 180 -210 { lab=VSS}
N 180 -210 180 -200 { lab=VSS}
N 270 -280 270 -270 { lab=VSS}
N 270 -270 270 -260 { lab=VSS}
N 570 -440 610 -440 { lab=VDD}
N 570 -420 610 -420 { lab=VSS}
N 460 -410 460 -380 { lab=VDD}
N 460 -280 510 -280 { lab=VSS}
N 360 -330 410 -330 { lab=ibiasn}
N 270 -390 310 -390 { lab=vhold}
N 270 -390 270 -350 { lab=vhold}
N 970 -300 970 -250 { lab=VSS}
N 1010 -270 1010 -250 { lab=VSS}
N 1010 -300 1030 -300 { lab=VSS}
N 1030 -300 1030 -250 { lab=VSS}
N 1010 -360 1010 -330 { lab=vhold}
N 1070 -300 1070 -250 { lab=VSS}
N 1110 -270 1110 -250 { lab=VSS}
N 1110 -300 1130 -300 { lab=VSS}
N 1130 -300 1130 -250 { lab=VSS}
N 1110 -360 1110 -330 { lab=vholdm}
N 1170 -300 1170 -250 { lab=VSS}
N 1210 -270 1210 -250 { lab=VSS}
N 1210 -300 1230 -300 { lab=VSS}
N 1230 -300 1230 -250 { lab=VSS}
N 1210 -360 1210 -330 { lab=vin}
N 1270 -300 1270 -250 { lab=VSS}
N 1310 -270 1310 -250 { lab=VSS}
N 1310 -300 1330 -300 { lab=VSS}
N 1330 -300 1330 -250 { lab=VSS}
N 1310 -360 1310 -330 { lab=vout}
N 740 -270 740 -250 { lab=VSS}
N 810 -270 810 -250 { lab=VSS}
N 870 -270 870 -250 { lab=VSS}
N 710 -330 870 -330 { lab=VSS}
N 710 -330 710 -250 { lab=VSS}
N 710 -250 1330 -250 { lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {sky130_fd_pr/nfet_01v8.sym} 180 -370 1 0 {name=M1
L=1
W=2
nf=1 
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 570 -330 0 1 {name=l15 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 120 -350 0 0 {name=l17 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 180 -410 0 0 {name=l18 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 330 -350 0 1 {name=l19 sig_type=std_logic lab=vhold}
C {sky130_fd_pr/nfet_01v8.sym} 180 -240 1 0 {name=M2
L=1
W=2
nf=1 
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 180 -280 0 0 {name=l24 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 180 -330 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -200 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 270 -260 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 90 -350 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 180 -430 1 0 {name=p2 lab=clk}
C {devices/ipin.sym} 570 -440 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} 570 -420 0 0 {name=p4 lab=VSS}
C {devices/lab_wire.sym} 610 -420 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 610 -440 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_ota_lvs.sym} 460 -330 0 0 {name=x1}
C {devices/lab_wire.sym} 460 -390 0 0 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 490 -280 0 1 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 400 -330 0 0 {name=l9 sig_type=std_logic lab=ibiasn}
C {devices/ipin.sym} 360 -330 0 0 {name=p5 lab=ibiasn}
C {devices/opin.sym} 610 -330 0 0 {name=p6 lab=vout}
C {devices/opin.sym} 310 -390 0 0 {name=p7 lab=vhold}
C {devices/lab_wire.sym} 270 -220 0 1 {name=l10 sig_type=std_logic lab=vholdm}
C {sky130_fd_pr/cap_mim_m3_1.sym} 270 -310 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 470 -220 3 0 {name=C2 model=cap_mim_m3_1 W=10 L=10 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 740 -300 0 0 {name=C3 model=cap_mim_m3_1 W=14 L=2 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 810 -300 0 0 {name=C4 model=cap_mim_m3_1 W=2 L=12 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 870 -300 0 0 {name=C5 model=cap_mim_m3_1 W=2 L=10 MF=4 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 990 -300 0 0 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1010 -340 0 1 {name=l11 sig_type=std_logic lab=vhold}
C {sky130_fd_pr/nfet_01v8.sym} 1090 -300 0 0 {name=M4
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1110 -340 0 1 {name=l12 sig_type=std_logic lab=vholdm}
C {sky130_fd_pr/nfet_01v8.sym} 1190 -300 0 0 {name=M5
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
C {devices/lab_wire.sym} 1210 -340 0 1 {name=l13 sig_type=std_logic lab=vin}
C {sky130_fd_pr/nfet_01v8.sym} 1290 -300 0 0 {name=M6
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
C {devices/lab_wire.sym} 1310 -340 0 1 {name=l14 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 910 -250 0 1 {name=l16 sig_type=std_logic lab=VSS}
