v {xschem version=2.9.9 file_version=1.2 

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 740 -390 850 -390 { lab=vop}
N 740 -430 850 -430 { lab=vom}
N 580 -460 580 -440 { lab=#net1}
N 580 -380 580 -360 { lab=#net2}
N 700 -570 760 -570 { lab=vom}
N 700 -250 760 -250 { lab=vop}
N 460 -250 640 -250 { lab=vmret}
N 460 -380 460 -250 { lab=vmret}
N 460 -570 640 -570 { lab=vpret}
N 460 -570 460 -440 { lab=vpret}
N 580 -300 580 -240 { lab=vacm}
N 580 -580 580 -520 { lab=vacp}
N 290 -480 290 -440 { lab=vip}
N 290 -440 370 -440 { lab=vip}
N 290 -380 290 -340 { lab=vim}
N 290 -380 370 -380 { lab=vim}
N 370 -510 370 -440 { lab=vip}
N 430 -510 430 -440 { lab=vpret}
N 370 -380 370 -310 { lab=vim}
N 430 -380 430 -310 { lab=vmret}
N 220 -410 620 -410 { lab=vocm}
N 1050 -680 1160 -680 { lab=vop_test}
N 1050 -720 1160 -720 { lab=vom_test}
N 860 -770 860 -730 { lab=vip_test}
N 860 -730 930 -730 { lab=vip_test}
N 860 -670 860 -630 { lab=vim_test}
N 860 -670 930 -670 { lab=vim_test}
N 850 -700 930 -700 { lab=vocm}
N 760 -570 760 -430 { lab=vom}
N 760 -390 760 -250 { lab=vop}
N 580 -440 620 -440 { lab=#net1}
N 580 -380 620 -380 { lab=#net2}
N 430 -380 460 -380 { lab=vmret}
N 430 -440 460 -440 { lab=vpret}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 1030 -350 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include diff_ota_stability_tb_commands.spice"}
C {devices/code.sym} 1030 -500 0 0 {name=TT_MODELS
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
C {devices/lab_wire.sym} 340 -440 0 0 {name=l2 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 340 -380 2 1 {name=l3 sig_type=std_logic lab=vim}
C {devices/lab_wire.sym} 340 -410 0 0 {name=l4 sig_type=std_logic lab=vocm}
C {devices/capa.sym} 670 -570 1 1 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 400 -440 1 1 {name=C2
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 670 -250 1 0 {name=C3
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 400 -380 1 0 {name=C4
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 780 -430 0 1 {name=l5 sig_type=std_logic lab=vom}
C {devices/lab_wire.sym} 780 -390 0 1 {name=l6 sig_type=std_logic lab=vop}
C {devices/capa.sym} 850 -460 2 1 {name=C5
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 850 -360 0 0 {name=C6
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 850 -490 2 1 {name=l7 lab=GND}
C {devices/gnd.sym} 850 -330 0 0 {name=l8 lab=GND}
C {devices/res.sym} 400 -510 1 1 {name=R1
value=100g
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 400 -310 1 0 {name=R2
value=100g
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 580 -490 2 0 {name=R4
value="100g ac=1m"
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 580 -330 0 1 {name=R6
value="100g ac=1m"
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 580 -290 2 1 {name=l10 sig_type=std_logic lab=vacm}
C {devices/vsource.sym} 580 -210 0 0 {name=Vacm value="dc 'vincm' ac 0.5 180"}
C {devices/gnd.sym} 580 -180 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 580 -530 0 0 {name=l12 sig_type=std_logic lab=vacp}
C {devices/vsource.sym} 580 -610 2 1 {name=Vacp value="dc 'vincm' ac 0.5 0"}
C {devices/gnd.sym} 580 -640 2 1 {name=l13 lab=GND}
C {devices/vsource.sym} 290 -510 2 1 {name=Vip value='vincm'}
C {devices/gnd.sym} 290 -540 2 1 {name=l9 lab=GND}
C {devices/vsource.sym} 290 -310 0 0 {name=Vim value='vincm'}
C {devices/gnd.sym} 290 -280 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 490 -570 0 0 {name=l14 sig_type=std_logic lab=vpret}
C {devices/lab_wire.sym} 490 -250 2 1 {name=l16 sig_type=std_logic lab=vmret}
C {devices/vsource.sym} 220 -380 0 0 {name=Vocm value='vcmdes'}
C {devices/gnd.sym} 220 -350 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 1090 -720 0 1 {name=l20 sig_type=std_logic lab=vom_test}
C {devices/lab_wire.sym} 1090 -680 0 1 {name=l21 sig_type=std_logic lab=vop_test}
C {devices/lab_wire.sym} 910 -730 0 0 {name=l22 sig_type=std_logic lab=vip_test}
C {devices/vsource.sym} 860 -800 2 1 {name=Viptest value="dc 'vincm' ac 0.5 0"}
C {devices/gnd.sym} 860 -830 2 1 {name=l23 lab=GND}
C {devices/lab_wire.sym} 910 -670 2 1 {name=l24 sig_type=std_logic lab=vim_test}
C {devices/vsource.sym} 860 -600 0 0 {name=Vimtest value="dc 'vincm' ac 0.5 180"}
C {devices/gnd.sym} 860 -570 0 0 {name=l25 lab=GND}
C {devices/lab_wire.sym} 900 -700 0 0 {name=l26 sig_type=std_logic lab=vocm}
C {devices/capa.sym} 1160 -750 2 1 {name=C7
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1160 -650 0 0 {name=C8
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1160 -780 2 1 {name=l27 lab=GND}
C {devices/gnd.sym} 1160 -620 0 0 {name=l28 lab=GND}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/diff_fold_casc_ota.sym} 680 -410 0 0 {name=x1}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/diff_fold_casc_ota.sym} 990 -700 0 0 {name=x2}
