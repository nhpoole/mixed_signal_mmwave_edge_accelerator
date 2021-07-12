# Mixed-Signal Edge Accelerator for Real-Time mmWave Platform Vibration Compensation

This repository contains the complete designs, layouts, verification files, processing scripts, and documentation for an analog/mixed-signal mmWave edge processing chip implemented using the open-source Skywater 130nm process technology. The chip is designed to carry out edge-based, real-time inertial sensor fusion for vibratory motion compensation on a mmWave radar platform. Full documentation of the motivation and background for the chip can be found in the "Background_and_Introduction.pdf" file in the top level of the repository. Details on the designs and layouts can be found in the "MmWave_Sensor_Fusion_Edge_Accelerator.pdf" file. Finally, information on verification tests can be found in the "Designs_Tests_Documentation.pdf" file. Other directories in this project repository include:

<br />designs/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;All analog schematics for the chip.
<br />digital_synth_pnr/&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;The place and route flows for the digital portions of the chip.
<br />images/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;Screen shots of the final chip, including the analog subsystem.
<br />layouts/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;Layouts for all the analog blocks.
<br />matlab_scripts/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;Post-processing and simulation MATLAB scripts for the various analog and digital designs.
<br />saved_gds_files/&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;The final GDS files for the chip.
<br />simulations/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;SPICE design files and SPICE testbench files for the analog designs.
<br />verilog&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;RTL for the digital designs.