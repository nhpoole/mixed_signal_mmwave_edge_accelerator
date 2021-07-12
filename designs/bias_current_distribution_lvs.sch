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
N 990 -660 1020 -660 { lab=VDD}
N 990 -630 1020 -630 { lab=VSS}
N 1020 -660 1040 -660 { lab=VDD}
N 1020 -630 1040 -630 { lab=VSS}
N 1010 -540 1010 -520 { lab=VDD}
N 990 -540 990 -490 { lab=VDD}
N 990 -490 1010 -490 { lab=VDD}
N 1130 -490 1150 -490 { lab=VDD}
N 1130 -540 1130 -490 { lab=VDD}
N 1150 -540 1150 -520 { lab=VDD}
N 1110 -440 1210 -440 { lab=vbiasp}
N 1210 -490 1210 -440 { lab=vbiasp}
N 990 -540 1150 -540 { lab=VDD}
N 1290 -540 1290 -520 { lab=VDD}
N 1270 -540 1270 -490 { lab=VDD}
N 1270 -490 1290 -490 { lab=VDD}
N 1010 -460 1010 -390 { lab=input_amplifier_ibiasn1}
N 1150 -460 1150 -390 { lab=input_amplifier_ibiasn2}
N 1290 -460 1290 -390 { lab=diff_to_se_converter_ibiasn}
N 1430 -540 1430 -520 { lab=VDD}
N 1410 -540 1410 -490 { lab=VDD}
N 1410 -490 1430 -490 { lab=VDD}
N 1430 -460 1430 -390 { lab=peak_detector_ibiasn1}
N 1580 -540 1580 -520 { lab=VDD}
N 1560 -540 1560 -490 { lab=VDD}
N 1560 -490 1580 -490 { lab=VDD}
N 1580 -460 1580 -390 { lab=peak_detector_ibiasn2}
N 1740 -540 1740 -520 { lab=VDD}
N 1720 -540 1720 -490 { lab=VDD}
N 1720 -490 1740 -490 { lab=VDD}
N 1740 -460 1740 -390 { lab=sample_and_hold_ibiasn_A}
N 1900 -540 1900 -520 { lab=VDD}
N 1880 -540 1880 -490 { lab=VDD}
N 1880 -490 1900 -490 { lab=VDD}
N 1900 -460 1900 -390 { lab=dac_8bit_ibiasn_A}
N 2080 -540 2080 -520 { lab=VDD}
N 2060 -540 2060 -490 { lab=VDD}
N 2060 -490 2080 -490 { lab=VDD}
N 2080 -460 2080 -390 { lab=sample_and_hold_ibiasn_B}
N 2240 -540 2240 -520 { lab=VDD}
N 2220 -540 2220 -490 { lab=VDD}
N 2220 -490 2240 -490 { lab=VDD}
N 2240 -460 2240 -390 { lab=dac_8bit_ibiasn_B}
N 1150 -540 2240 -540 { lab=VDD}
N 2280 -490 2320 -490 { lab=vbiasp}
N 2300 -490 2300 -440 { lab=vbiasp}
N 1210 -440 2300 -440 { lab=vbiasp}
N 1190 -490 1210 -490 { lab=vbiasp}
N 1330 -490 1350 -490 { lab=vbiasp}
N 1350 -490 1350 -440 { lab=vbiasp}
N 1470 -490 1490 -490 { lab=vbiasp}
N 1490 -490 1490 -440 { lab=vbiasp}
N 1620 -490 1640 -490 { lab=vbiasp}
N 1640 -490 1640 -440 { lab=vbiasp}
N 1780 -490 1800 -490 { lab=vbiasp}
N 1800 -490 1800 -440 { lab=vbiasp}
N 1940 -490 1960 -490 { lab=vbiasp}
N 1960 -490 1960 -440 { lab=vbiasp}
N 2120 -490 2140 -490 { lab=vbiasp}
N 2140 -490 2140 -440 { lab=vbiasp}
N 1050 -490 1070 -490 { lab=vbiasp}
N 1070 -490 1070 -440 { lab=vbiasp}
N 1070 -440 1110 -440 { lab=vbiasp}
N 870 -540 870 -520 { lab=VDD}
N 850 -540 850 -490 { lab=VDD}
N 850 -490 870 -490 { lab=VDD}
N 870 -460 870 -390 { lab=comparator_ibiasn}
N 730 -540 730 -520 { lab=VDD}
N 710 -540 710 -490 { lab=VDD}
N 710 -490 730 -490 { lab=VDD}
N 730 -460 730 -390 { lab=biquad_gm_c_filter_ibiasn1}
N 590 -540 590 -520 { lab=VDD}
N 570 -540 570 -490 { lab=VDD}
N 570 -490 590 -490 { lab=VDD}
N 590 -460 590 -390 { lab=biquad_gm_c_filter_ibiasn2}
N 440 -540 440 -520 { lab=VDD}
N 420 -540 420 -490 { lab=VDD}
N 420 -490 440 -490 { lab=VDD}
N 440 -460 440 -390 { lab=biquad_gm_c_filter_ibiasn3}
N 300 -540 300 -520 { lab=VDD}
N 280 -540 280 -490 { lab=VDD}
N 280 -490 300 -490 { lab=VDD}
N 300 -460 300 -390 { lab=biquad_gm_c_filter_ibiasn4}
N 150 -540 150 -520 { lab=VDD}
N 130 -540 130 -490 { lab=VDD}
N 130 -490 150 -490 { lab=VDD}
N 150 -460 150 -390 { lab=low_freq_pll_ibiasn}
N 130 -540 990 -540 { lab=VDD}
N 210 -440 1070 -440 { lab=vbiasp}
N 210 -490 210 -440 { lab=vbiasp}
N 190 -490 210 -490 { lab=vbiasp}
N 340 -490 360 -490 { lab=vbiasp}
N 360 -490 360 -440 { lab=vbiasp}
N 480 -490 500 -490 { lab=vbiasp}
N 500 -490 500 -440 { lab=vbiasp}
N 630 -490 650 -490 { lab=vbiasp}
N 650 -490 650 -440 { lab=vbiasp}
N 770 -490 790 -490 { lab=vbiasp}
N 790 -490 790 -440 { lab=vbiasp}
N 910 -490 930 -490 { lab=vbiasp}
N 930 -490 930 -440 { lab=vbiasp}
N 2600 -460 2600 -440 { lab=VSS}
N 2600 -490 2620 -490 { lab=VSS}
N 2620 -490 2620 -440 { lab=VSS}
N 2600 -440 2620 -440 { lab=VSS}
N 2500 -490 2560 -490 { lab=vbiasn}
N 2600 -570 2600 -520 { lab=dac_8bit_ibiasp_A}
N 2760 -460 2760 -440 { lab=VSS}
N 2760 -490 2780 -490 { lab=VSS}
N 2780 -490 2780 -440 { lab=VSS}
N 2760 -440 2780 -440 { lab=VSS}
N 2760 -570 2760 -520 { lab=dac_8bit_ibiasp_B}
N 2530 -540 2530 -490 { lab=vbiasn}
N 2530 -540 2690 -540 { lab=vbiasn}
N 2690 -540 2690 -490 { lab=vbiasn}
N 2690 -490 2720 -490 { lab=vbiasn}
N 2580 -140 2580 -120 { lab=VSS}
N 2580 -170 2600 -170 { lab=VSS}
N 2600 -170 2600 -120 { lab=VSS}
N 2580 -120 2600 -120 { lab=VSS}
N 2740 -140 2740 -120 { lab=VSS}
N 2740 -170 2760 -170 { lab=VSS}
N 2760 -170 2760 -120 { lab=VSS}
N 2740 -120 2760 -120 { lab=VSS}
N 2540 -170 2540 -120 { lab=VSS}
N 2540 -120 2580 -120 { lab=VSS}
N 2600 -120 2740 -120 { lab=VSS}
N 2700 -170 2700 -120 { lab=VSS}
N 2580 -230 2580 -200 { lab=dac_8bit_ibiasp_A}
N 2740 -230 2740 -200 { lab=dac_8bit_ibiasp_B}
N 2580 -260 2620 -260 { lab=VDD}
N 2620 -340 2620 -260 { lab=VDD}
N 2560 -340 2620 -340 { lab=VDD}
N 2560 -340 2560 -290 { lab=VDD}
N 2560 -290 2580 -290 { lab=VDD}
N 2580 -340 2580 -320 { lab=VDD}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/ipin.sym} 990 -660 0 0 {name=p7 lab=VDD}
C {devices/ipin.sym} 990 -630 0 0 {name=p8 lab=VSS}
C {devices/lab_wire.sym} 1000 -660 0 1 {name=l23 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1000 -630 0 1 {name=l30 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1030 -490 0 1 {name=M1
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1060 -540 0 1 {name=l3 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 2320 -490 0 1 {name=p1 lab=vbiasp}
C {sky130_fd_pr/pfet_01v8.sym} 1170 -490 0 1 {name=M2
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 1010 -390 1 0 {name=p2 lab=input_amplifier_ibiasn1}
C {devices/opin.sym} 1150 -390 1 0 {name=p3 lab=input_amplifier_ibiasn2}
C {sky130_fd_pr/pfet_01v8.sym} 1310 -490 0 1 {name=M3
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 1290 -390 1 0 {name=p4 lab=diff_to_se_converter_ibiasn}
C {sky130_fd_pr/pfet_01v8.sym} 1450 -490 0 1 {name=M4
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 1430 -390 1 0 {name=p5 lab=peak_detector_ibiasn1}
C {sky130_fd_pr/pfet_01v8.sym} 1600 -490 0 1 {name=M5
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 1580 -390 1 0 {name=p6 lab=peak_detector_ibiasn2}
C {sky130_fd_pr/pfet_01v8.sym} 1760 -490 0 1 {name=M6
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 1740 -390 1 0 {name=p9 lab=sample_and_hold_ibiasn_A}
C {sky130_fd_pr/pfet_01v8.sym} 1920 -490 0 1 {name=M7
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 1900 -390 1 0 {name=p10 lab=dac_8bit_ibiasn_A}
C {sky130_fd_pr/pfet_01v8.sym} 2100 -490 0 1 {name=M8
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 2080 -390 1 0 {name=p11 lab=sample_and_hold_ibiasn_B}
C {sky130_fd_pr/pfet_01v8.sym} 2260 -490 0 1 {name=M9
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 2240 -390 1 0 {name=p12 lab=dac_8bit_ibiasn_B}
C {sky130_fd_pr/pfet_01v8.sym} 890 -490 0 1 {name=M10
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 870 -390 1 0 {name=p13 lab=comparator_ibiasn}
C {sky130_fd_pr/pfet_01v8.sym} 750 -490 0 1 {name=M11
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 730 -390 1 0 {name=p14 lab=biquad_gm_c_filter_ibiasn1}
C {sky130_fd_pr/pfet_01v8.sym} 610 -490 0 1 {name=M12
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 590 -390 1 0 {name=p15 lab=biquad_gm_c_filter_ibiasn2}
C {sky130_fd_pr/pfet_01v8.sym} 460 -490 0 1 {name=M13
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 440 -390 1 0 {name=p16 lab=biquad_gm_c_filter_ibiasn3}
C {sky130_fd_pr/pfet_01v8.sym} 320 -490 0 1 {name=M14
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 300 -390 1 0 {name=p17 lab=biquad_gm_c_filter_ibiasn4}
C {sky130_fd_pr/pfet_01v8.sym} 170 -490 0 1 {name=M15
L=4
W=6
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 150 -390 1 0 {name=p18 lab=low_freq_pll_ibiasn}
C {sky130_fd_pr/nfet_01v8.sym} 2580 -490 0 0 {name=M16
L=2
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
C {devices/lab_wire.sym} 2620 -440 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 2500 -490 0 0 {name=p19 lab=vbiasn}
C {devices/opin.sym} 2600 -570 3 0 {name=p20 lab=dac_8bit_ibiasp_A}
C {sky130_fd_pr/nfet_01v8.sym} 2740 -490 0 0 {name=M17
L=2
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
C {devices/lab_wire.sym} 2780 -440 0 1 {name=l2 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 2760 -570 3 0 {name=p21 lab=dac_8bit_ibiasp_B}
C {sky130_fd_pr/nfet_01v8.sym} 2560 -170 0 0 {name=M18
L=2
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
C {devices/lab_wire.sym} 2630 -120 0 1 {name=l5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 2720 -170 0 0 {name=M19
L=2
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
C {devices/lab_wire.sym} 2580 -210 0 0 {name=l6 sig_type=std_logic lab=dac_8bit_ibiasp_A}
C {devices/lab_wire.sym} 2740 -210 0 1 {name=l7 sig_type=std_logic lab=dac_8bit_ibiasp_B}
C {sky130_fd_pr/pfet_01v8.sym} 2600 -290 0 1 {name=M20
L=4
W=6
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 2580 -340 0 1 {name=l8 sig_type=std_logic lab=VDD}
