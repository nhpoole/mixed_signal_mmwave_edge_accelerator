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
N 170 -140 170 -120 { lab=VSS}
N 110 -220 170 -220 { lab=#net1}
N 110 -220 110 -170 { lab=#net1}
N 170 -170 190 -170 { lab=VSS}
N 190 -170 190 -120 { lab=VSS}
N 170 -120 190 -120 { lab=VSS}
N 110 -170 130 -170 { lab=#net1}
N 170 -220 170 -200 { lab=#net1}
N 150 -580 180 -580 { lab=VDD}
N 150 -550 180 -550 { lab=VSS}
N 180 -580 200 -580 { lab=VDD}
N 180 -550 200 -550 { lab=VSS}
N 170 -440 170 -220 { lab=#net1}
N 170 -520 170 -500 { lab=VDD}
N 150 -520 170 -520 { lab=VDD}
N 150 -520 150 -470 { lab=VDD}
N 150 -470 170 -470 { lab=VDD}
N 210 -470 270 -470 { lab=vbiasn1}
N 410 -140 410 -120 { lab=VSS}
N 350 -220 410 -220 { lab=#net2}
N 350 -220 350 -170 { lab=#net2}
N 410 -170 430 -170 { lab=VSS}
N 430 -170 430 -120 { lab=VSS}
N 410 -120 430 -120 { lab=VSS}
N 350 -170 370 -170 { lab=#net2}
N 410 -220 410 -200 { lab=#net2}
N 410 -440 410 -220 { lab=#net2}
N 410 -520 410 -500 { lab=VDD}
N 390 -520 410 -520 { lab=VDD}
N 390 -520 390 -470 { lab=VDD}
N 390 -470 410 -470 { lab=VDD}
N 450 -470 510 -470 { lab=vbiasn2}
N 660 -140 660 -120 { lab=VSS}
N 660 -170 680 -170 { lab=VSS}
N 680 -170 680 -120 { lab=VSS}
N 660 -120 680 -120 { lab=VSS}
N 660 -220 660 -200 { lab=#net3}
N 660 -440 660 -220 { lab=#net3}
N 660 -520 660 -500 { lab=VDD}
N 640 -520 660 -520 { lab=VDD}
N 640 -520 640 -470 { lab=VDD}
N 640 -470 660 -470 { lab=VDD}
N 560 -170 620 -170 { lab=vbiasp}
N 700 -470 720 -470 { lab=#net3}
N 720 -470 720 -420 { lab=#net3}
N 660 -420 720 -420 { lab=#net3}
N 910 -140 910 -120 { lab=VSS}
N 850 -220 910 -220 { lab=#net4}
N 850 -220 850 -170 { lab=#net4}
N 910 -170 930 -170 { lab=VSS}
N 930 -170 930 -120 { lab=VSS}
N 910 -120 930 -120 { lab=VSS}
N 850 -170 870 -170 { lab=#net4}
N 910 -220 910 -200 { lab=#net4}
N 910 -440 910 -220 { lab=#net4}
N 910 -520 910 -500 { lab=VDD}
N 890 -520 910 -520 { lab=VDD}
N 890 -520 890 -470 { lab=VDD}
N 890 -470 910 -470 { lab=VDD}
N 950 -470 1010 -470 { lab=vbiasn3}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {sky130_fd_pr/nfet_01v8.sym} 150 -170 0 0 {name=M2
L=4.8
W=3
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
C {devices/ipin.sym} 150 -580 0 0 {name=p7 lab=VDD}
C {devices/ipin.sym} 150 -550 0 0 {name=p8 lab=VSS}
C {devices/lab_wire.sym} 160 -580 0 1 {name=l23 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 160 -550 0 1 {name=l30 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 190 -470 0 1 {name=M1
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
C {devices/lab_wire.sym} 190 -120 0 1 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -510 0 1 {name=l3 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 270 -470 0 1 {name=p1 lab=vbiasn1}
C {sky130_fd_pr/nfet_01v8.sym} 390 -170 0 0 {name=M3
L=4
W=1
nf=1 
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 430 -470 0 1 {name=M4
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
C {devices/lab_wire.sym} 430 -120 0 1 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 -510 0 1 {name=l6 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 510 -470 0 1 {name=p2 lab=vbiasn2}
C {sky130_fd_pr/nfet_01v8.sym} 640 -170 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 680 -470 0 1 {name=M6
L=2
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
C {devices/lab_wire.sym} 680 -120 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 660 -510 0 1 {name=l7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 560 -170 0 0 {name=p4 lab=vbiasp}
C {sky130_fd_pr/nfet_01v8.sym} 890 -170 0 0 {name=M7
L=4
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 930 -470 0 1 {name=M8
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
C {devices/lab_wire.sym} 930 -120 0 1 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 910 -510 0 1 {name=l9 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 1010 -470 0 1 {name=p3 lab=vbiasn3}
