v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1930 -890 1930 -860 { lab=out}
N 1690 -990 1730 -990 { lab=VDD}
N 1690 -970 1730 -970 { lab=in}
N 1690 -950 1730 -950 { lab=out}
N 1930 -990 1930 -950 { lab=VDD}
N 1890 -920 1890 -830 { lab=in}
N 1850 -880 1890 -880 { lab=in}
N 1930 -880 1980 -880 { lab=out}
N 1930 -920 1950 -920 { lab=VDD}
N 1950 -970 1950 -920 { lab=VDD}
N 1930 -970 1950 -970 { lab=VDD}
N 1930 -830 1950 -830 { lab=VSS}
N 1930 -800 1950 -800 { lab=VSS}
N 1950 -830 1950 -800 { lab=VSS}
N 1810 -1070 1850 -1070 { lab=in}
N 1930 -1070 1970 -1070 { lab=out2}
N 1930 -800 1930 -780 { lab=VSS}
N 1690 -1010 1730 -1010 { lab=VSS}
N 1690 -930 1730 -930 { lab=out2}
C {sky130_fd_pr/nfet_01v8.sym} 1910 -830 0 0 {name=M2
L=0.15
W=0.65
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1730 -990 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1730 -970 0 0 {name=l10 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 1730 -950 0 0 {name=l11 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 1980 -880 0 0 {name=l12 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 1930 -970 0 0 {name=l13 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1870 -880 0 0 {name=l8 sig_type=std_logic lab=in}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1910 -920 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/code.sym} 2110 -910 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Standard cells
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hd__inv_1.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/code.sym} 2110 -1060 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include inv_test_commands.spice"}
C {sky130_stdcells/inv_1.sym} 1890 -1070 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 1840 -1070 0 0 {name=l1 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 1970 -1070 0 0 {name=l6 sig_type=std_logic lab=out2}
C {devices/lab_wire.sym} 1930 -780 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1690 -990 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 1690 -970 0 0 {name=p2 lab=in}
C {devices/lab_wire.sym} 1730 -1010 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1690 -1010 0 0 {name=p3 lab=VSS}
C {devices/opin.sym} 1730 -950 0 0 {name=p4 lab=out}
C {devices/lab_wire.sym} 1730 -930 0 0 {name=l4 sig_type=std_logic lab=out2}
C {devices/opin.sym} 1730 -930 0 0 {name=p5 lab=out2}
