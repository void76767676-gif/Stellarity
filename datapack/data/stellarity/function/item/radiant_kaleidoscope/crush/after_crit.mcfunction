# Delayed crit echo sound (random 1..3)
execute store result score #rnd kohara.misc run random value 1..3
execute if score #rnd kohara.misc matches 1 run playsound stellarity:item/radiant_kaleidoscope/crit1 player @a ~ ~ ~ 1.2 1
execute if score #rnd kohara.misc matches 2 run playsound stellarity:item/radiant_kaleidoscope/crit2 player @a ~ ~ ~ 1.2 1
execute if score #rnd kohara.misc matches 3 run playsound stellarity:item/radiant_kaleidoscope/crit3 player @a ~ ~ ~ 1.2 1
