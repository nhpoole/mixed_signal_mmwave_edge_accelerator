v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1930 -890 1930 -860 { lab=#net1}
N 1930 -990 1930 -950 { lab=VDD}
N 1890 -920 1890 -830 { lab=A}
N 1850 -880 1890 -880 { lab=A}
N 1930 -920 1950 -920 { lab=VDD}
N 1950 -970 1950 -920 { lab=VDD}
N 1930 -970 1950 -970 { lab=VDD}
N 1930 -830 1950 -830 { lab=GND}
N 1950 -830 1950 -800 { lab=GND}
N 1930 -800 1930 -790 { lab=GND}
N 1950 -800 1950 -790 { lab=GND}
N 1930 -790 1950 -790 { lab=GND}
N 2020 -890 2020 -860 { lab=Y}
N 2020 -990 2020 -950 { lab=VDD}
N 1980 -920 1980 -830 { lab=#net1}
N 2020 -880 2070 -880 { lab=Y}
N 2020 -920 2040 -920 { lab=VDD}
N 2040 -970 2040 -920 { lab=VDD}
N 2020 -970 2040 -970 { lab=VDD}
N 2020 -830 2040 -830 { lab=GND}
N 2040 -830 2040 -800 { lab=GND}
N 2020 -800 2020 -790 { lab=GND}
N 2040 -800 2040 -790 { lab=GND}
N 2020 -790 2040 -790 { lab=GND}
N 1930 -880 1980 -880 { lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 1910 -830 0 0 {name=M2
L=0.15
W=0.65
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 1930 -790 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1910 -920 0 0 {name=M1
L=0.15
W=1
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/vdd.sym} 1930 -990 0 0 {name=l14 lab=VDD}
C {devices/ipin.sym} 1850 -880 0 0 {name=p1 lab=A}
C {sky130_fd_pr/nfet_01v8.sym} 2000 -830 0 0 {name=M3
L=0.15
W=0.65
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 2020 -790 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 2000 -920 0 0 {name=M4
L=0.15
W=1
nf=1
mult=M
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/vdd.sym} 2020 -990 0 0 {name=l3 lab=VDD}
C {devices/opin.sym} 2070 -880 0 0 {name=p4 lab=Y}
