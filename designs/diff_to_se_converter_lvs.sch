v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 340 -320 380 -320 { lab=vim}
N 360 -240 400 -240 { lab=vim}
N 360 -320 360 -240 { lab=vim}
N 500 -340 570 -340 { lab=vse}
N 460 -240 520 -240 { lab=vse}
N 520 -340 520 -240 { lab=vse}
N 360 -360 380 -360 { lab=vip}
N 360 -480 360 -440 { lab=vocm}
N 340 -360 360 -360 { lab=vip}
N 360 -380 360 -360 { lab=vip}
N 430 -420 430 -390 { lab=VDD}
N 430 -290 490 -290 { lab=VSS}
N 720 -510 760 -510 { lab=VDD}
N 720 -490 760 -490 { lab=VSS}
N 230 -340 380 -340 { lab=ibiasn}
N 650 -410 760 -410 { lab=VSS}
N 650 -350 760 -350 { lab=VSS}
N 220 -270 220 -240 { lab=rst}
N 250 -190 250 -160 { lab=VSS}
N 190 -280 190 -250 { lab=VDD}
N 840 -240 880 -240 { lab=rst}
N 640 -240 680 -240 { lab=rst_n}
N 640 -270 680 -270 { lab=VDD}
N 640 -210 680 -210 { lab=VSS}
N 220 -510 220 -480 { lab=rst}
N 250 -430 250 -400 { lab=VSS}
N 190 -520 190 -490 { lab=VDD}
N 290 -460 290 -380 { lab=vip}
N 290 -380 360 -380 { lab=vip}
N 760 -350 770 -350 { lab=VSS}
N 760 -410 770 -410 { lab=VSS}
N 130 -340 230 -340 { lab=ibiasn}
N 130 -360 230 -360 { lab=vdiffp}
N 130 -320 230 -320 { lab=vdiffm}
N 120 -360 130 -360 { lab=vdiffp}
N 120 -340 130 -340 { lab=ibiasn}
N 120 -320 130 -320 { lab=vdiffm}
N 140 -460 150 -460 { lab=vdiffp}
N 140 -460 140 -360 { lab=vdiffp}
N 140 -220 150 -220 { lab=vdiffm}
N 140 -320 140 -220 { lab=vdiffm}
N 290 -220 360 -220 { lab=vim}
N 360 -240 360 -220 { lab=vim}
N 310 -360 340 -360 { lab=vip}
N 230 -360 250 -360 { lab=vdiffp}
N 230 -320 250 -320 { lab=vdiffm}
N 310 -320 340 -320 { lab=vim}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/lab_wire.sym} 530 -340 0 1 {name=l52 sig_type=std_logic lab=vse}
C {devices/lab_wire.sym} 360 -450 0 1 {name=l47 sig_type=std_logic lab=vocm}
C {devices/lab_wire.sym} 360 -320 0 0 {name=l2 sig_type=std_logic lab=vim}
C {devices/lab_wire.sym} 360 -360 0 0 {name=l3 sig_type=std_logic lab=vip}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/se_fold_casc_wide_swing_ota_lvs.sym} 430 -340 0 0 {name=x1}
C {devices/ipin.sym} 120 -360 0 0 {name=p1 lab=vdiffp}
C {devices/ipin.sym} 120 -320 0 0 {name=p2 lab=vdiffm}
C {devices/lab_wire.sym} 430 -400 0 1 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 450 -290 0 1 {name=l6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 720 -510 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} 720 -490 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 360 -480 3 1 {name=p5 lab=vocm}
C {devices/opin.sym} 570 -340 0 0 {name=p6 lab=vse}
C {devices/lab_wire.sym} 730 -510 0 1 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 730 -490 0 1 {name=l8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 120 -340 0 0 {name=p7 lab=ibiasn}
C {sky130_fd_pr/cap_mim_m3_1.sym} 650 -380 0 0 {name=C13 model=cap_mim_m3_1 W=12 L=2 MF=8 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 710 -380 0 0 {name=C14 model=cap_mim_m3_1 W=8 L=2 MF=8 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 770 -380 0 0 {name=C15 model=cap_mim_m3_1 W=2 L=8 MF=8 spiceprefix=X}
C {devices/lab_wire.sym} 670 -410 0 1 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 670 -350 2 0 {name=l32 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 430 -240 1 0 {name=C1 model=cap_mim_m3_1 W=8 L=8 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 280 -320 1 0 {name=C2 model=cap_mim_m3_1 W=8 L=8 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 280 -360 1 0 {name=C3 model=cap_mim_m3_1 W=8 L=8 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 360 -410 2 0 {name=C4 model=cap_mim_m3_1 W=8 L=8 MF=4 spiceprefix=X}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/txgate_lvs.sym} 220 -220 0 0 {name=x2}
C {devices/lab_wire.sym} 190 -260 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 250 -160 0 1 {name=l11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 220 -250 0 1 {name=l12 sig_type=std_logic lab=rst}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/inv1.sym} 730 -240 0 0 {name=x3}
C {devices/lab_wire.sym} 850 -240 0 1 {name=l13 sig_type=std_logic lab=rst}
C {devices/ipin.sym} 640 -240 0 0 {name=p8 lab=rst_n}
C {devices/lab_wire.sym} 640 -210 0 1 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 640 -270 0 1 {name=l15 sig_type=std_logic lab=VDD}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/txgate_lvs.sym} 220 -460 0 0 {name=x4}
C {devices/lab_wire.sym} 190 -500 0 0 {name=l16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 250 -400 0 1 {name=l17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 220 -490 0 1 {name=l18 sig_type=std_logic lab=rst}
