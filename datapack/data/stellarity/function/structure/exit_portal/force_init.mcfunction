# Force initialize custom exit portal and Main Island when vanilla portal was placed or crystal was missing

# Purge any vanilla bedrock portal fountain
execute in minecraft:the_end run fill -4 55 -4 4 75 4 air replace minecraft:bedrock
execute in minecraft:the_end run fill -4 55 -4 4 75 4 air replace minecraft:end_portal
execute in minecraft:the_end run fill -4 55 -4 4 75 4 air replace minecraft:torch
execute in minecraft:the_end run fill -4 55 -4 4 75 4 air replace minecraft:dragon_egg

# Summon custom exit portal marker if missing
execute in minecraft:the_end unless entity @e[type=marker,tag=stellarity.exit_portal] run summon marker 0.5 61 0.5 {Tags:["stellarity.exit_portal","stellarity.portal_deactivated","stellarity.marker","smithed.entity","smithed.strict"],CustomName:{"text":"Exit Portal"}}

# Place deactivated structure
execute in minecraft:the_end positioned 0.5 61 0.5 run function stellarity:structure/exit_portal/deactivated/generate

# Post-generation: chest at 7 60 0, Altar of the Accursed at 42 67 -48, crystal cleanup
execute in minecraft:the_end as @e[type=marker,tag=stellarity.exit_portal,limit=1] run function stellarity:post_gen/initialize
