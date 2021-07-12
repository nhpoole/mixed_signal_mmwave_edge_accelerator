v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 -130 170 -130 { lab=CLK}
N 140 -110 170 -110 { lab=D}
N 350 -130 380 -130 { lab=Q}
N 350 -110 380 -110 { lab=QB}
N 140 -200 170 -200 { lab=VDD}
N 140 -180 170 -180 { lab=VSS}
C {devices/ipin.sym} 140 -110 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 140 -130 0 0 {name=p2 lab=CLK}
C {sky130_stdcells/dfxbp_1.sym} 260 -120 0 0 {name=x12 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 380 -130 0 0 {name=p5 lab=Q}
C {devices/opin.sym} 380 -110 0 0 {name=p6 lab=QB}
C {devices/ipin.sym} 140 -200 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} 140 -180 0 0 {name=p4 lab=VSS}
C {devices/lab_wire.sym} 170 -200 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 170 -180 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/code.sym} 490 -190 0 0 {name=TT_MODELS
only_toplevel=false
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfxbp/sky130_fd_sc_hd__dfxbp_1.spice
"}
