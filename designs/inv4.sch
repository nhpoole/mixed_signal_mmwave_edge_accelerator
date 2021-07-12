v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1930 -890 1930 -860 { lab=Y}
N 1930 -990 1930 -950 { lab=VDD}
N 1890 -920 1890 -830 { lab=A}
N 1850 -880 1890 -880 { lab=A}
N 1930 -880 1980 -880 { lab=Y}
N 1930 -920 1950 -920 { lab=VDD}
N 1950 -970 1950 -920 { lab=VDD}
N 1930 -970 1950 -970 { lab=VDD}
N 1930 -830 1950 -830 { lab=VSS}
N 1950 -830 1950 -800 { lab=VSS}
N 1930 -800 1930 -790 { lab=VSS}
N 1950 -800 1950 -790 { lab=VSS}
N 1930 -790 1950 -790 { lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 1910 -830 0 0 {name=M2
L=0.15
W=0.65
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1910 -920 0 0 {name=M1
L=0.15
W=1
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/ipin.sym} 1850 -880 0 0 {name=p1 lab=A}
C {devices/opin.sym} 1980 -880 0 0 {name=p3 lab=Y}
C {devices/ipin.sym} 1930 -990 3 1 {name=p2 lab=VDD}
C {devices/ipin.sym} 1930 -790 1 1 {name=p4 lab=VSS}
