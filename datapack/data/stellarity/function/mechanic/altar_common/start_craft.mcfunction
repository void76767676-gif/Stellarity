# Starts the 1-second (20 ticks) altar crafting convergence sequence
    scoreboard players set @s stellarity.altar.craft_progress 20

# Tag all ingredient items to pull them in
    tag @e[type=item,distance=..2.2,tag=!stellarity.altar.skip] add stellarity.altar.in_craft

# Initial activation sound and charge effect
    playsound stellarity:mechanic.altar_of_the_accursed.insert block @a ~ ~0.5 ~ 0.9 1.1
    playsound minecraft:block.enchantment_table.use block @a ~ ~0.5 ~ 0.85 0.8
    particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10
