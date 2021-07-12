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
N 380 -390 380 -380 { lab=vintm}
N 380 -380 430 -380 { lab=vintm}
N 380 -440 380 -430 { lab=vintp}
N 380 -440 430 -440 { lab=vintp}
N 90 -440 180 -440 { lab=vip}
N 90 -380 180 -380 { lab=vim}
N 550 -430 620 -430 { lab=vintp}
N 620 -440 620 -430 { lab=vintp}
N 620 -440 660 -440 { lab=vintp}
N 550 -390 620 -390 { lab=vintm}
N 620 -390 620 -380 { lab=vintm}
N 620 -380 660 -380 { lab=vintm}
N 780 -430 850 -430 { lab=vfiltp}
N 850 -440 850 -430 { lab=vfiltp}
N 850 -440 890 -440 { lab=vfiltp}
N 780 -390 850 -390 { lab=vfiltm}
N 850 -390 850 -380 { lab=vfiltm}
N 380 -540 380 -440 { lab=vintp}
N 380 -540 980 -540 { lab=vintp}
N 980 -540 1070 -390 { lab=vintp}
N 380 -380 380 -280 { lab=vintm}
N 380 -280 980 -280 { lab=vintm}
N 980 -280 1070 -430 { lab=vintm}
N 620 -540 620 -440 { lab=vintp}
N 620 -380 620 -280 { lab=vintm}
N 850 -380 890 -380 { lab=vfiltm}
N 850 -560 930 -560 { lab=vfiltp}
N 850 -260 930 -260 { lab=vfiltm}
N 850 -560 850 -440 { lab=vfiltp}
N 850 -380 850 -260 { lab=vfiltm}
N 300 -430 380 -430 { lab=vintp}
N 300 -390 380 -390 { lab=vintm}
N 90 -410 180 -410 { lab=vocm}
N 340 -410 430 -410 { lab=vocm}
N 570 -410 660 -410 { lab=vocm}
N 800 -410 890 -410 { lab=vocm}
N 240 -340 240 -310 { lab=VSS}
N 240 -510 240 -480 { lab=VDD}
N 210 -510 210 -490 { lab=ibiasn1}
N 950 -340 950 -310 { lab=VSS}
N 950 -510 950 -480 { lab=VDD}
N 920 -510 920 -490 { lab=ibiasn4}
N 720 -510 720 -480 { lab=VSS}
N 720 -340 720 -310 { lab=VDD}
N 690 -330 690 -310 { lab=ibiasn3}
N 490 -510 490 -480 { lab=VSS}
N 490 -340 490 -310 { lab=VDD}
N 460 -330 460 -310 { lab=ibiasn2}
N 1010 -430 1070 -430 { lab=vintm}
N 1010 -390 1070 -390 { lab=vintp}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/lab_wire.sym} 160 -410 0 0 {name=l34 sig_type=std_logic lab=vocm}
C {devices/lab_wire.sym} 140 -440 0 0 {name=l35 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 150 -380 0 0 {name=l36 sig_type=std_logic lab=vim}
C {devices/lab_wire.sym} 880 -260 2 0 {name=l37 sig_type=std_logic lab=vfiltm}
C {devices/lab_wire.sym} 880 -560 0 1 {name=l38 sig_type=std_logic lab=vfiltp}
C {devices/lab_wire.sym} 410 -410 0 0 {name=l32 sig_type=std_logic lab=vocm}
C {devices/lab_wire.sym} 640 -410 0 0 {name=l39 sig_type=std_logic lab=vocm}
C {devices/lab_wire.sym} 870 -410 0 0 {name=l41 sig_type=std_logic lab=vocm}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/gm_c_stage_lvs.sym} 240 -410 0 0 {name=x1 Itail=0.01u Wp=0.5 Wn_diff=8 Wpcm=0.5 Wncm=8 Wn_bias=1 Lp=1 Ln_diff=1 Lpcm=1 Lncm=1 Ln_bias=4}
C {devices/lab_wire.sym} 210 -490 0 0 {name=l2 sig_type=std_logic lab=ibiasn1}
C {devices/lab_wire.sym} 240 -490 0 1 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 240 -310 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/gm_c_stage_lvs.sym} 950 -410 0 0 {name=x4 Itail=0.01u Wp=0.5 Wn_diff=8 Wpcm=0.5 Wncm=8 Wn_bias=1 Lp=1 Ln_diff=1 Lpcm=1 Lncm=1 Ln_bias=4}
C {devices/lab_wire.sym} 920 -490 0 0 {name=l5 sig_type=std_logic lab=ibiasn4}
C {devices/lab_wire.sym} 950 -490 0 1 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 950 -310 0 1 {name=l7 sig_type=std_logic lab=VSS}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/gm_c_stage_lvs.sym} 720 -410 2 1 {name=x2 Itail=0.01u Wp=0.5 Wn_diff=8 Wpcm=0.5 Wncm=8 Wn_bias=1 Lp=1 Ln_diff=1 Lpcm=1 Lncm=1 Ln_bias=4}
C {devices/lab_wire.sym} 690 -330 2 1 {name=l8 sig_type=std_logic lab=ibiasn3}
C {devices/lab_wire.sym} 720 -330 2 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 720 -510 2 0 {name=l10 sig_type=std_logic lab=VSS}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/gm_c_stage_lvs.sym} 490 -410 2 1 {name=x3 Itail=0.01u Wp=0.5 Wn_diff=8 Wpcm=0.5 Wncm=8 Wn_bias=1 Lp=1 Ln_diff=1 Lpcm=1 Lncm=1 Ln_bias=4}
C {devices/lab_wire.sym} 460 -330 2 1 {name=l11 sig_type=std_logic lab=ibiasn2}
C {devices/lab_wire.sym} 490 -330 2 0 {name=l12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 490 -510 2 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 730 -540 0 1 {name=l14 sig_type=std_logic lab=vintp}
C {devices/lab_wire.sym} 730 -280 0 1 {name=l15 sig_type=std_logic lab=vintm}
C {devices/ipin.sym} 1190 -580 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 1190 -560 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 1190 -540 0 0 {name=p3 lab=vip}
C {devices/ipin.sym} 1190 -520 0 0 {name=p4 lab=vim}
C {devices/ipin.sym} 1190 -500 0 0 {name=p5 lab=ibiasn1}
C {devices/ipin.sym} 1190 -420 0 0 {name=p6 lab=vocm}
C {devices/opin.sym} 1120 -400 0 0 {name=p7 lab=vfiltp}
C {devices/opin.sym} 1120 -380 0 0 {name=p8 lab=vfiltm}
C {devices/opin.sym} 1120 -360 0 0 {name=p9 lab=vintp}
C {devices/opin.sym} 1120 -340 0 0 {name=p10 lab=vintm}
C {devices/ipin.sym} 1190 -480 0 0 {name=p11 lab=ibiasn2}
C {devices/ipin.sym} 1190 -460 0 0 {name=p12 lab=ibiasn3}
C {devices/ipin.sym} 1190 -440 0 0 {name=p13 lab=ibiasn4}
