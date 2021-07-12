v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 290 -150 290 -90 { lab=clamp}
N 290 -60 310 -60 { lab=VSS}
N 310 -60 310 -10 { lab=VSS}
N 290 -10 310 -10 { lab=VSS}
N 290 -30 290 -10 { lab=VSS}
N 290 -180 310 -180 { lab=VDD}
N 310 -230 310 -180 { lab=VDD}
N 290 -230 310 -230 { lab=VDD}
N 290 -230 290 -210 { lab=VDD}
N 230 -180 250 -180 { lab=VDD}
N 230 -230 230 -190 { lab=VDD}
N 230 -230 290 -230 { lab=VDD}
N 230 -190 230 -180 { lab=VDD}
N 230 -60 250 -60 { lab=VSS}
N 230 -60 230 -10 { lab=VSS}
N 230 -10 290 -10 { lab=VSS}
C {devices/iopin.sym} 60 -290 0 0 {name=p1 lab=clamp}
C {devices/ipin.sym} 80 -250 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 80 -210 0 0 {name=p3 lab=VSS}
C {devices/lab_wire.sym} 290 -120 0 0 {name=l2 sig_type=std_logic lab=clamp}
C {devices/lab_wire.sym} 230 -10 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 270 -60 0 0 {name=M1
L=0.5
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 270 -180 0 0 {name=M2
L=0.5
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 230 -230 0 0 {name=l1 sig_type=std_logic lab=VDD}
