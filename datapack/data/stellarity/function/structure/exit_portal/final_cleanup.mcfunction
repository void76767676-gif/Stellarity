# Final cleanup of exit portal on the main island

# Purge any vanilla bedrock, dragon egg, torches, and portal blocks from Y=55 to 75
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:bedrock
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:end_portal
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:wall_torch
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:torch
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:dragon_egg
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:end_stone

# Purge any vanilla bedrock portal fountain from sky location (Y=190..256)
function stellarity:structure/exit_portal/purge_sky

# Ensure custom activated portal is properly generated
execute in minecraft:the_end positioned 0.5 61 0.5 run function stellarity:structure/exit_portal/activated/generate

