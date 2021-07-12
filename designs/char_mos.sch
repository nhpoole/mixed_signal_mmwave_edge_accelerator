v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1580 -780 1610 -780 { lab=GND}
N 1610 -780 1640 -780 { lab=GND}
N 1580 -880 1580 -840 { lab=vdsn}
N 1640 -880 1640 -840 { lab=vgsn}
N 1850 -830 1890 -830 { lab=vgsn}
N 1930 -880 1980 -880 { lab=vdsn}
N 1930 -830 1950 -830 { lab=GND}
N 1930 -800 1950 -800 { lab=GND}
N 1950 -830 1950 -800 { lab=GND}
N 1520 -880 1520 -840 { lab=vdd}
N 1520 -780 1580 -780 { lab=GND}
N 1930 -880 1930 -860 { lab=vdsn}
N 2170 -900 2170 -860 { lab=vdd}
N 2170 -830 2190 -830 { lab=vdd}
N 2190 -880 2190 -830 { lab=vdd}
N 2170 -880 2190 -880 { lab=vdd}
N 2090 -830 2130 -830 { lab=vgp}
N 1700 -780 1730 -780 { lab=GND}
N 1730 -780 1760 -780 { lab=GND}
N 1700 -880 1700 -840 { lab=vdp}
N 1760 -880 1760 -840 { lab=vgp}
N 1640 -780 1700 -780 { lab=GND}
N 2170 -800 2170 -760 { lab=vdp}
N 1850 -670 1890 -670 { lab=vgsn}
N 1930 -720 1980 -720 { lab=vdsn}
N 1930 -670 1950 -670 { lab=GND}
N 1930 -640 1950 -640 { lab=GND}
N 1950 -670 1950 -640 { lab=GND}
N 1930 -720 1930 -700 { lab=vdsn}
N 2170 -740 2170 -700 { lab=vdd}
N 2170 -670 2190 -670 { lab=vdd}
N 2190 -720 2190 -670 { lab=vdd}
N 2170 -720 2190 -720 { lab=vdd}
N 2090 -670 2130 -670 { lab=vgp}
N 2170 -640 2170 -600 { lab=vdp}
N 2170 -580 2170 -540 { lab=vdd}
N 2170 -510 2190 -510 { lab=vdd}
N 2190 -560 2190 -510 { lab=vdd}
N 2170 -560 2190 -560 { lab=vdd}
N 2090 -510 2130 -510 { lab=vgp}
N 2170 -480 2170 -440 { lab=vdp}
N 1850 -510 1890 -510 { lab=vgsn}
N 1930 -560 1980 -560 { lab=vdsn}
N 1930 -510 1950 -510 { lab=GND}
N 1930 -480 1950 -480 { lab=GND}
N 1950 -510 1950 -480 { lab=GND}
N 1930 -560 1930 -540 { lab=vdsn}
C {devices/vsource.sym} 1580 -810 0 0 {name=vdsn value=vdsn}
C {devices/vsource.sym} 1640 -810 0 0 {name=vgsn value=vgsn}
C {devices/gnd.sym} 1610 -780 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 1910 -830 0 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 1930 -800 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 1700 -980 0 0 {  value=".include char_mos_commands.spice" name="SPICE"}
C {devices/lab_wire.sym} 1580 -860 0 0 {name=l7 sig_type=std_logic lab=vdsn}
C {devices/lab_wire.sym} 1980 -880 0 0 {name=l12 sig_type=std_logic lab=vdsn}
C {devices/lab_wire.sym} 1640 -860 0 0 {name=l6 sig_type=std_logic lab=vgsn}
C {devices/lab_wire.sym} 1870 -830 0 0 {name=l8 sig_type=std_logic lab=vgsn}
C {devices/vsource.sym} 1520 -810 0 0 {name=vdd value=vdd}
C {devices/lab_wire.sym} 1520 -860 0 0 {name=l14 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2170 -880 0 0 {name=l13 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2110 -830 0 0 {name=l15 sig_type=std_logic lab=vgp}
C {devices/vsource.sym} 1700 -810 0 0 {name=vdp value=vdp}
C {devices/vsource.sym} 1760 -810 0 0 {name=vgp value=vgp}
C {devices/lab_wire.sym} 1700 -860 0 0 {name=l17 sig_type=std_logic lab=vdp}
C {devices/lab_wire.sym} 1760 -860 0 0 {name=l18 sig_type=std_logic lab=vgp}
C {devices/lab_wire.sym} 2170 -770 0 0 {name=l16 sig_type=std_logic lab=vdp}
C {sky130_fd_pr/pfet_01v8.sym} 2150 -830 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 1930 -640 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1980 -720 0 0 {name=l4 sig_type=std_logic lab=vdsn}
C {devices/lab_wire.sym} 1870 -670 0 0 {name=l5 sig_type=std_logic lab=vgsn}
C {devices/lab_wire.sym} 2170 -720 0 0 {name=l9 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2110 -670 0 0 {name=l10 sig_type=std_logic lab=vgp}
C {devices/lab_wire.sym} 2170 -610 0 0 {name=l11 sig_type=std_logic lab=vdp}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2150 -670 0 0 {name=M4
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1910 -670 0 0 {name=M3
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 2150 -510 0 0 {name=M5
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
C {devices/lab_wire.sym} 2170 -560 0 0 {name=l19 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 2110 -510 0 0 {name=l20 sig_type=std_logic lab=vgp}
C {devices/lab_wire.sym} 2170 -450 0 0 {name=l21 sig_type=std_logic lab=vdp}
C {devices/gnd.sym} 1930 -480 0 0 {name=l22 lab=GND}
C {devices/lab_wire.sym} 1980 -560 0 0 {name=l23 sig_type=std_logic lab=vdsn}
C {devices/lab_wire.sym} 1870 -510 0 0 {name=l24 sig_type=std_logic lab=vgsn}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1910 -510 0 0 {name=M6
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
