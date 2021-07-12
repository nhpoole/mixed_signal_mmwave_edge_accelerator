v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1930 -890 1930 -860 { lab=#net1}
N 1930 -990 1930 -950 { lab=#net2}
N 1850 -920 1890 -920 { lab=A}
N 1930 -920 1950 -920 { lab=#net2}
N 1950 -970 1950 -920 { lab=#net2}
N 1930 -970 1950 -970 { lab=#net2}
N 1930 -730 1930 -710 { lab=#net3}
N 1930 -710 1950 -710 { lab=#net3}
N 1930 -760 1950 -760 { lab=#net3}
N 1990 -760 2030 -760 { lab=A}
N 1850 -760 1890 -760 { lab=B}
N 1950 -760 1950 -710 { lab=#net3}
N 2070 -730 2070 -710 { lab=#net3}
N 1950 -710 2070 -710 { lab=#net3}
N 2070 -760 2090 -760 { lab=#net3}
N 2090 -760 2090 -710 { lab=#net3}
N 2070 -710 2090 -710 { lab=#net3}
N 1930 -800 1930 -790 { lab=Y}
N 1860 -830 1860 -760 { lab=B}
N 1860 -830 1890 -830 { lab=B}
N 1930 -830 1950 -830 { lab=#net2}
N 1950 -920 1950 -830 { lab=#net2}
N 1930 -800 2190 -800 { lab=Y}
N 2070 -800 2070 -790 { lab=Y}
C {sky130_fd_pr/nfet_01v8.sym} 2050 -760 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 1910 -760 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1910 -830 0 0 {name=M4
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
C {devices/ipin.sym} 1850 -920 0 0 {name=p1 lab=A}
C {devices/ipin.sym} 1850 -760 0 0 {name=p2 lab=B}
C {devices/lab_wire.sym} 2020 -760 0 0 {name=l1 sig_type=std_logic lab=A}
C {devices/opin.sym} 2190 -800 0 0 {name=p3 lab=Y}
C {devices/ipin.sym} 1930 -990 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 1930 -710 0 0 {name=p5 lab=VSS}
