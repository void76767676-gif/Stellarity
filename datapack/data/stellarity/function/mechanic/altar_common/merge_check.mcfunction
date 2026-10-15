# Ensure item type tags are added if missing
execute unless entity @s[tag=stellarity.altar_of_the_accursed.checked_type] run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/add

# Mark self
tag @s add stellarity.altar.merge_source

# Extract item id and current count
data modify storage stellarity:temp altar.merge.id set from entity @s Item.id
execute store result score #merge_src_count stellarity.misc run data get entity @s Item.count

# If source stack is already full (64), skip
execute if score #merge_src_count stellarity.misc matches 64.. run tag @s remove stellarity.altar.merge_source
execute if score #merge_src_count stellarity.misc matches 64.. run return 0

# Check other loose items within range
execute as @e[type=item,distance=0.01..2.0,tag=!stellarity.altar.skip,tag=!stellarity.altar.merge_source,tag=!stellarity.altar.in_craft,limit=1] at @s run function stellarity:mechanic/altar_common/macro_merge_compare with storage stellarity:temp altar.merge

tag @s remove stellarity.altar.merge_source
