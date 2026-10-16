# Final cleanup of exit portal on the main island


# Remove vanilla bedrock, dragon egg, and torches 2 blocks above deactivated structure (Y 65-68)
    execute in minecraft:the_end run fill -2 66 -2 2 68 2 air replace minecraft:bedrock
    execute in minecraft:the_end run fill -2 66 -2 2 68 2 air replace minecraft:dragon_egg
    execute in minecraft:the_end run fill -2 66 -2 2 68 2 air replace minecraft:torch
