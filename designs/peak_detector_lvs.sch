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
N 90 -370 150 -370 { lab=vin}
N 450 -450 450 -430 { lab=VDD}
N 600 -450 600 -430 { lab=VDD}
N 430 -400 450 -400 { lab=VDD}
N 430 -450 430 -400 { lab=VDD}
N 600 -400 620 -400 { lab=VDD}
N 620 -450 620 -400 { lab=VDD}
N 510 -400 510 -350 { lab=verr}
N 490 -400 560 -400 { lab=verr}
N 450 -370 450 -350 { lab=verr}
N 620 -260 640 -260 { lab=vpeak_out}
N 620 -260 620 -210 { lab=vpeak_out}
N 620 -210 780 -210 { lab=vpeak_out}
N 780 -280 780 -210 { lab=vpeak_out}
N 760 -280 860 -280 { lab=vpeak_out}
N 420 -300 560 -300 { lab=vpeakh}
N 560 -300 620 -300 { lab=vpeakh}
N 620 -300 640 -300 { lab=vpeakh}
N 530 -250 570 -250 { lab=rst}
N 470 -250 490 -250 { lab=VSS}
N 430 -450 620 -450 { lab=VDD}
N 490 -220 490 -200 { lab=VSS}
N 490 -300 490 -280 { lab=vpeakh}
N 420 -200 490 -200 { lab=VSS}
N 620 -210 620 -170 { lab=vpeak_out}
N 600 -370 600 -300 { lab=vpeakh}
N 470 -250 470 -200 { lab=VSS}
N 260 -350 510 -350 { lab=verr}
N 110 -330 110 -170 { lab=vpeak_out}
N 110 -170 620 -170 { lab=vpeak_out}
N 600 -280 640 -280 { lab=ibiasn2}
N 690 -360 690 -330 { lab=VDD}
N 690 -230 750 -230 { lab=VSS}
N 110 -350 150 -350 { lab=ibiasn1}
N 200 -300 200 -270 { lab=VDD}
N 200 -400 260 -400 { lab=VSS}
N 110 -330 150 -330 { lab=vpeak_out}
N 90 -350 110 -350 { lab=ibiasn1}
N 790 -430 830 -430 { lab=VSS}
N 790 -450 830 -450 { lab=VDD}
N 390 -300 420 -300 { lab=vpeakh}
N 1060 -260 1080 -260 { lab=VDD}
N 1080 -310 1080 -260 { lab=VDD}
N 1060 -310 1060 -290 { lab=VDD}
N 1020 -310 1020 -260 { lab=VDD}
N 1060 -230 1060 -200 { lab=vpeakh}
N 1020 -310 1080 -310 { lab=VDD}
N 1180 -300 1300 -300 { lab=VSS}
N 1180 -240 1300 -240 { lab=VSS}
N 1300 -240 1360 -240 { lab=VSS}
N 1300 -300 1360 -300 { lab=VSS}
N 350 -300 390 -300 { lab=vpeakh}
N 370 -300 370 -280 { lab=vpeakh}
N 420 -300 420 -280 { lab=vpeakh}
N 370 -220 370 -200 { lab=VSS}
N 370 -200 420 -200 { lab=VSS}
N 420 -220 420 -200 { lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/lab_wire.sym} 120 -370 0 0 {name=l4 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 780 -280 0 1 {name=l8 sig_type=std_logic lab=vpeak_out}
C {sky130_fd_pr/pfet_01v8.sym} 580 -400 0 0 {name=M3
L=1
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 470 -400 0 1 {name=M4
L=1
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 530 -300 0 1 {name=l9 sig_type=std_logic lab=vpeakh}
C {sky130_fd_pr/nfet_01v8.sym} 510 -250 0 1 {name=M2
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
C {devices/lab_wire.sym} 540 -250 0 1 {name=l5 sig_type=std_logic lab=rst}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_ota_lvs.sym} 690 -280 0 0 {name=x2}
C {devices/lab_wire.sym} 630 -280 0 0 {name=l2 sig_type=std_logic lab=ibiasn2}
C {devices/lab_wire.sym} 720 -230 0 1 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -340 0 1 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 510 -450 0 1 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 430 -200 0 1 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 200 -290 2 0 {name=l12 sig_type=std_logic lab=VDD}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_ota_lvs.sym} 200 -350 2 1 {name=x1}
C {devices/lab_wire.sym} 230 -400 2 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -350 0 0 {name=l14 sig_type=std_logic lab=ibiasn1}
C {devices/ipin.sym} 90 -370 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 90 -350 0 0 {name=p2 lab=ibiasn1}
C {devices/lab_wire.sym} 320 -350 0 0 {name=l11 sig_type=std_logic lab=verr}
C {devices/opin.sym} 860 -280 0 0 {name=p3 lab=vpeak_out}
C {devices/ipin.sym} 790 -450 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 790 -430 0 0 {name=p5 lab=VSS}
C {devices/lab_wire.sym} 800 -450 0 1 {name=l15 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 800 -430 0 1 {name=l16 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 350 -300 0 1 {name=p6 lab=vpeakh}
C {devices/ipin.sym} 570 -250 0 1 {name=p7 lab=rst}
C {sky130_fd_pr/pfet_01v8.sym} 1040 -260 0 0 {name=M1
L=1
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1060 -200 0 1 {name=l17 sig_type=std_logic lab=vpeakh}
C {devices/lab_wire.sym} 1030 -310 0 1 {name=l18 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1180 -270 0 0 {name=C3 model=cap_mim_m3_1 W=31 L=2 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1240 -270 0 0 {name=C4 model=cap_mim_m3_1 W=4 L=29 MF=4 spiceprefix=X}
C {devices/lab_wire.sym} 1230 -300 0 0 {name=l85 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1230 -240 2 1 {name=l86 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1300 -270 0 0 {name=C5 model=cap_mim_m3_2 W=29 L=4 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1360 -270 0 0 {name=C6 model=cap_mim_m3_2 W=2 L=31 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 370 -250 0 0 {name=C1 model=cap_mim_m3_1 W=26 L=24 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 420 -250 2 0 {name=C7 model=cap_mim_m3_2 W=24 L=26 MF=4 spiceprefix=X}
C {devices/ipin.sym} 600 -280 0 0 {name=p8 lab=ibiasn2}
