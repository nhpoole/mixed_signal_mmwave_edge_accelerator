v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 -200 170 -200 { lab=VDD}
N 140 -180 170 -180 { lab=VSS}
N 340 -130 370 -130 { lab=Y}
N 230 -130 260 -130 { lab=A}
C {devices/ipin.sym} 140 -200 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} 140 -180 0 0 {name=p4 lab=VSS}
C {devices/lab_wire.sym} 170 -200 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 170 -180 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/code.sym} 490 -190 0 0 {name=TT_MODELS
only_toplevel=false
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hd__inv_1.spice
"}
C {sky130_stdcells/inv_1.sym} 300 -130 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 250 -130 0 0 {name=l3 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 360 -130 0 0 {name=l4 sig_type=std_logic lab=Y}
C {devices/ipin.sym} 230 -130 0 0 {name=p1 lab=A}
C {devices/opin.sym} 370 -130 0 0 {name=p2 lab=Y}
