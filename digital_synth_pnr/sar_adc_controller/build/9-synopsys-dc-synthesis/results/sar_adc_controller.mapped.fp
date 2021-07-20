#*************************************************
#  Created by Design Compiler Topographical write_floorplan
#  Version: L-2016.03-SP5-5
#  Date: Mon Jul 19 16:02:25 2021
#*************************************************
undo_config -disable
set oldSnapState [set_object_snap_type -enabled false]



#*************************************************
#   SECTION: Core Area
#*************************************************

remove_base_array -all



#*************************************************
#   SECTION: Site Rows, with number: 0
#*************************************************
cut_row -all 

update_floorplan



#*************************************************
#   SECTION: Preroutes, with number: 0
#*************************************************

remove_net_shape *
remove_via *
remove_user_shape *

set_object_snap_type -enabled $oldSnapState

undo_config -enable
