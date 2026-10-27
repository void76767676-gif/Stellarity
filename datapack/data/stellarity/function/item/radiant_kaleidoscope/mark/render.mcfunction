# Master render function for Radiant Mark
execute if score @s stellarity.item.rk.mark_phase matches 1 run function stellarity:item/radiant_kaleidoscope/mark/render_phase1
execute if score @s stellarity.item.rk.mark_phase matches 3 run function stellarity:item/radiant_kaleidoscope/mark/render_crown_wrapper
