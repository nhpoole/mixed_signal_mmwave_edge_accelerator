#! /usr/bin/env python
#=========================================================================
# construct.py
#=========================================================================
# Chip GDS Merge
#
# Author : Nikhil Poole
# Date   : Jun 18, 2021
#

import os
import sys

from mflowgen.components import Graph, Step

def construct():

  g = Graph()

  #-----------------------------------------------------------------------
  # Parameters
  #-----------------------------------------------------------------------

  adk_name = 'skywater-130nm-adk'
  adk_view = 'view-standard'

  parameters = {
    'construct_path' : __file__,
    'design_name'    : 'user_analog_project_wrapper',
    'adk'            : adk_name,
    'adk_view'       : adk_view,
    'topographical'  : True,
  }

  #-----------------------------------------------------------------------
  # Create nodes
  #-----------------------------------------------------------------------

  this_dir = os.path.dirname( os.path.abspath( __file__ ) )

  # ADK step

  g.set_adk( adk_name )
  adk = g.get_adk_step()

  premerge                  = Step( this_dir + '/premerge'                          )
  gdsmerge                  = Step( this_dir + '/mentor-calibre-gdsmerge'           )
  lvs_setup                 = Step( this_dir + '/lvs-setup'                         )
  magic_gds2spice           = Step( this_dir + '/open-magic-gds2spice'              )
  magic_gds2spice_nobbox    = Step( this_dir + '/open-magic-gds2spice-nobbox'       )
  calibre_lvs               = Step( this_dir + '/mentor-calibre-comparison'         )
  calibre_lvs_nobbox        = Step( this_dir + '/mentor-calibre-comparison-nobbox'  )
  netgen_lvs_gds            = Step( this_dir + '/open-netgen-lvs'                   )
  netgen_lvs_gds.set_name('netgen-lvs-gds')

  #-----------------------------------------------------------------------
  # Graph -- Add nodes
  #-----------------------------------------------------------------------

  g.add_step( premerge                  )
  g.add_step( gdsmerge                  )
  g.add_step( lvs_setup                 )
  g.add_step( magic_gds2spice           )
  g.add_step( magic_gds2spice_nobbox    )
  g.add_step( calibre_lvs               )
  g.add_step( calibre_lvs_nobbox        )
  g.add_step( netgen_lvs_gds            )

  #-----------------------------------------------------------------------
  # Graph -- Add edges
  #-----------------------------------------------------------------------

  # Dynamically add edges
  g.connect_by_name( adk,                       gdsmerge                )
  g.connect_by_name( adk,                       magic_gds2spice         )
  g.connect_by_name( adk,                       magic_gds2spice_nobbox  )
  g.connect_by_name( adk,                       calibre_lvs             )
  g.connect_by_name( adk,                       calibre_lvs_nobbox      )
  g.connect_by_name( adk,                       netgen_lvs_gds          )

  g.connect_by_name( premerge,                  gdsmerge                )
  g.connect_by_name( gdsmerge,                  magic_gds2spice         )
  g.connect_by_name( gdsmerge,                  magic_gds2spice_nobbox  )
  g.connect_by_name( lvs_setup,                 magic_gds2spice         )
  g.connect_by_name( lvs_setup,                 magic_gds2spice_nobbox  )
  g.connect_by_name( lvs_setup,                 calibre_lvs             )
  g.connect_by_name( lvs_setup,                 calibre_lvs_nobbox      )
#  g.connect_by_name( magic_gds2spice,           calibre_lvs             )
#  g.connect_by_name( magic_gds2spice_nobbox,    calibre_lvs_nobbox      )
  g.connect_by_name( lvs_setup,                 netgen_lvs_gds          )

  #-----------------------------------------------------------------------
  # Parameterize
  #-----------------------------------------------------------------------

  g.update_params( parameters )

  return g

if __name__ == '__main__':
  g = construct()
# g.plot()
