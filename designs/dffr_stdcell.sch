v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 280 -70 320 -70 { lab=QB}
N 280 -90 320 -90 { lab=Q}
N 110 -200 150 -200 { lab=VDD}
N 110 -170 150 -170 { lab=VSS}
N 70 -70 100 -70 { lab=D}
N 70 -50 100 -50 { lab=RN}
N 70 -90 100 -90 { lab=CLK}
C {devices/ipin.sym} 70 -70 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 70 -90 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} 320 -90 0 0 {name=p3 lab=Q}
C {devices/opin.sym} 320 -70 0 0 {name=p4 lab=QB}
C {devices/ipin.sym} 70 -50 0 0 {name=p5 lab=RN}
C {devices/ipin.sym} 110 -200 0 0 {name=p6 lab=VDD}
C {devices/ipin.sym} 110 -170 0 0 {name=p7 lab=VSS}
C {devices/lab_wire.sym} 120 -200 0 1 {name=l13 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 120 -170 0 1 {name=l14 sig_type=std_logic lab=VSS}
C {sky130_stdcells/dfrbp_1.sym} 190 -70 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/code.sym} 420 -160 0 0 {name=TT_MODELS
only_toplevel=false
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfrbp/sky130_fd_sc_hd__dfrbp_1.spice
"}
