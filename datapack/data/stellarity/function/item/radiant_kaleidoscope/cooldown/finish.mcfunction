# Stop loop sound
stopsound @s player stellarity:item.radiant_kaleidoscope.charge_loop

# Reload end sound (random 1..6)
execute store result score #rnd kohara.misc run random value 1..6
execute if score #rnd kohara.misc matches 1 run playsound stellarity:item/radiant_kaleidoscope/reload_end1 player @s ~ ~ ~ 1 1
execute if score #rnd kohara.misc matches 2 run playsound stellarity:item/radiant_kaleidoscope/reload_end2 player @s ~ ~ ~ 1 1
execute if score #rnd kohara.misc matches 3 run playsound stellarity:item/radiant_kaleidoscope/reload_end3 player @s ~ ~ ~ 1 1
execute if score #rnd kohara.misc matches 4 run playsound stellarity:item/radiant_kaleidoscope/reload_end4 player @s ~ ~ ~ 1 1
execute if score #rnd kohara.misc matches 5 run playsound stellarity:item/radiant_kaleidoscope/reload_end5 player @s ~ ~ ~ 1 1
execute if score #rnd kohara.misc matches 6 run playsound stellarity:item/radiant_kaleidoscope/reload_end6 player @s ~ ~ ~ 1 1

# Reset cooldown state
tag @s remove stellarity.item.rk.on_cooldown
scoreboard players reset @s stellarity.item.rk.cooldown

# Flash & celebratory particle ring
particle flash{color:-1} ~ ~1.2 ~ 0 0 0 0 1
particle end_rod ~ ~1.2 ~ 0.3 0.3 0.3 0.1 20

# Actionbar notification if holding
execute if predicate stellarity:item/holding/radiant_kaleidoscope run title @s actionbar [{"text":"✦ ","color":"#FFE259"},{"text":"Radiant Kaleidoscope Ready!","color":"#FFD700","bold":true},{"text":" ✦","color":"#FFE259"}]
