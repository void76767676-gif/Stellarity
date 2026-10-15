# @s is candidate stack, @n[tag=stellarity.altar.merge_source] is primary stack
execute store result score #merge_other_count stellarity.misc run data get entity @s Item.count

scoreboard players operation #merge_src_count stellarity.misc += #merge_other_count stellarity.misc

# If total <= 64: combine into primary and kill candidate
execute if score #merge_src_count stellarity.misc matches ..64 as @n[type=item,tag=stellarity.altar.merge_source] store result entity @s Item.count byte 1 run scoreboard players get #merge_src_count stellarity.misc
execute if score #merge_src_count stellarity.misc matches ..64 run kill @s

# If total > 64: fill primary to 64 and leave remainder in candidate
execute if score #merge_src_count stellarity.misc matches 65.. as @n[type=item,tag=stellarity.altar.merge_source] run data modify entity @s Item.count set value 64b
execute if score #merge_src_count stellarity.misc matches 65.. run scoreboard players remove #merge_src_count stellarity.misc 64
execute if score #merge_src_count stellarity.misc matches 65.. store result entity @s Item.count byte 1 run scoreboard players get #merge_src_count stellarity.misc

# Audio and visual feedback
playsound entity.item.pickup block @a ~ ~ ~ 0.35 1.5
particle poof ~ ~0.2 ~ 0.05 0.05 0.05 0.01 3
