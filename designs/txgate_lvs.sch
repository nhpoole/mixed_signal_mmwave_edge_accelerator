v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 380 -230 380 -210 { lab=out}
N 380 -230 400 -230 { lab=out}
N 380 -210 380 -190 { lab=out}
N 380 -190 400 -190 { lab=out}
N 460 -230 480 -230 { lab=in}
N 480 -230 480 -190 { lab=in}
N 460 -190 480 -190 { lab=in}
N 430 -200 430 -190 { lab=VDD}
N 430 -230 430 -220 { lab=VSS}
N 430 -220 470 -220 { lab=VSS}
N 470 -220 470 -180 { lab=VSS}
N 390 -240 390 -200 { lab=VDD}
N 390 -200 430 -200 { lab=VDD}
N 360 -210 380 -210 { lab=out}
N 430 -290 430 -270 { lab=tx}
N 430 -150 430 -130 { lab=txb}
N 130 -300 130 -230 { lab=vcom}
N 130 -330 150 -330 { lab=VDD}
N 150 -380 150 -330 { lab=VDD}
N 130 -380 130 -360 { lab=VDD}
N 90 -380 90 -330 { lab=VDD}
N 90 -380 150 -380 { lab=VDD}
N 110 -200 130 -200 { lab=VSS}
N 110 -200 110 -150 { lab=VSS}
N 130 -170 130 -150 { lab=VSS}
N 170 -200 170 -150 { lab=VSS}
N 110 -150 170 -150 { lab=VSS}
N 480 -210 510 -210 { lab=in}
N 330 -420 360 -420 { lab=VDD}
N 330 -360 360 -360 { lab=VSS}
N 330 -390 360 -390 { lab=tx}
N 520 -390 570 -390 { lab=txb}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 430 -170 3 0 {name=M7
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 430 -250 3 1 {name=M8
L=1
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
C {devices/lab_wire.sym} 390 -240 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 470 -180 2 0 {name=l15 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 150 -200 0 1 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 110 -330 2 1 {name=M2
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_wire.sym} 170 -150 0 0 {name=l31 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 120 -380 0 0 {name=l32 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 130 -260 0 0 {name=l33 sig_type=std_logic lab=out}
C {devices/ipin.sym} 510 -210 0 1 {name=p1 lab=in}
C {devices/opin.sym} 360 -210 0 1 {name=p2 lab=out}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv1.sym} 410 -390 0 0 {name=x1}
C {devices/ipin.sym} 330 -420 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} 330 -360 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 330 -390 0 0 {name=p5 lab=tx}
C {devices/lab_wire.sym} 560 -390 0 0 {name=l2 sig_type=std_logic lab=txb}
C {devices/lab_wire.sym} 430 -280 0 0 {name=l3 sig_type=std_logic lab=tx}
C {devices/lab_wire.sym} 430 -130 0 0 {name=l4 sig_type=std_logic lab=txb}
