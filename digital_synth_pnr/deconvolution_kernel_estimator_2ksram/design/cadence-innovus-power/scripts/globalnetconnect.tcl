#=========================================================================
# globalnetconnect.tcl
#=========================================================================
# Author : Nikhil Poole
# Date   : June 11, 2021

#-------------------------------------------------------------------------
# Global net connections for PG pins
#-------------------------------------------------------------------------

globalNetConnect VDD    -type pgpin -pin VPWR    -inst * -verbose
globalNetConnect VSS    -type pgpin -pin VGND    -inst * -verbose
globalNetConnect VSS    -type pgpin -pin VNB     -inst * -verbose
globalNetConnect VDD    -type pgpin -pin VPB     -inst * -verbose

globalNetConnect VDD    -type pgpin -pin vccd1   -inst * -verbose
globalNetConnect VSS    -type pgpin -pin vssd1   -inst * -verbose

