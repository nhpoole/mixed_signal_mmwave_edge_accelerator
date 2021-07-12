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
N 250 -460 270 -460 { lab=VDD}
N 250 -540 250 -490 { lab=#net1}
N 250 -430 250 -380 { lab=#net2}
N 250 -320 250 -270 { lab=#net3}
N 250 -210 250 -190 { lab=GND}
N 250 -240 270 -240 { lab=GND}
N 250 -570 270 -570 { lab=VDD}
N 270 -620 270 -460 { lab=VDD}
N 250 -350 270 -350 { lab=GND}
N 270 -350 270 -190 { lab=GND}
N 190 -460 210 -460 { lab=vin}
N 190 -460 190 -350 { lab=vin}
N 190 -350 210 -350 { lab=vin}
N 140 -410 190 -410 { lab=vin}
N 140 -240 210 -240 { lab=vbiasn}
N 250 -620 250 -600 { lab=VDD}
N 370 -460 390 -460 { lab=VDD}
N 370 -430 370 -380 { lab=vout}
N 370 -350 390 -350 { lab=GND}
N 370 -620 370 -490 { lab=VDD}
N 390 -620 390 -460 { lab=VDD}
N 390 -350 390 -190 { lab=GND}
N 370 -320 370 -190 { lab=GND}
N 310 -460 310 -400 { lab=#net2}
N 310 -460 330 -460 { lab=#net2}
N 310 -400 310 -350 { lab=#net2}
N 310 -350 330 -350 { lab=#net2}
N 250 -410 310 -410 { lab=#net2}
N 370 -410 430 -410 { lab=vout}
N 250 -190 390 -190 { lab=GND}
N 250 -620 390 -620 { lab=VDD}
N 140 -570 210 -570 { lab=vbiasn}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/vdd.sym} 320 -620 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 310 -190 0 0 {name=l12 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 230 -350 0 0 {name=M2
L='Lnmos'
W='Wnint'
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
C {sky130_fd_pr/nfet_01v8.sym} 230 -240 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 230 -460 0 0 {name=M4
L='Lpmos'
W='Wpint'
nf=1
mult='Mpmos'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 230 -570 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 350 -350 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 350 -460 0 0 {name=M8
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
C {devices/opin.sym} 430 -410 0 0 {name=p1 lab=vout}
C {devices/ipin.sym} 140 -410 0 0 {name=p2 lab=vin}
C {devices/ipin.sym} 140 -240 0 0 {name=p3 lab=vbiasn}
C {devices/ipin.sym} 140 -570 0 0 {name=p4 lab=vbiasp}
