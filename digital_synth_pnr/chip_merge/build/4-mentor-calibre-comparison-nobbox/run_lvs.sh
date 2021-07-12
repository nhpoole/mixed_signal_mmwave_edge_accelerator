envsubst < calibre_lvs.rule.template > calibre_lvs.rule
v2lvs -i -lsp inputs/adk/stdcells.spi -s inputs/adk/stdcells.spi -lsp inputs/*.sp -s inputs/*.sp -lsp source.added -s source.added -lsp inputs/user_analog_project_wrapper.spice -s inputs/user_analog_project_wrapper.spice -v inputs/deconv.nofillerflatbuslvs.v -v inputs/adc_controller.nofillerflatbuslvs.v -o design_lvs_calibre.spice

v2lvs -i -lsp inputs/design_extracted.spice -s inputs/design_extracted.spice -lsp source.added -s source.added -o design_extracted_calibre.spice

calibre -lvs -hier ./calibre_lvs.rule -hcell hcells -automatch
