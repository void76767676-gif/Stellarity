# Check if the elytra on the altar has stellarity:plated or stellarity:soaring
scoreboard players set #valid_elytra stellarity.misc 0

execute as @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra,limit=1] if data entity @s Item.components."minecraft:enchantments"."stellarity:plated" run scoreboard players set #valid_elytra stellarity.misc 1
execute as @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra,limit=1] if data entity @s Item.components."minecraft:enchantments"."stellarity:soaring" run scoreboard players set #valid_elytra stellarity.misc 1

execute if score #valid_elytra stellarity.misc matches 1 run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/craft_hallowed_elytra
