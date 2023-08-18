# Every 2 ticks
scoreboard players remove @s stellarity.items.spellbook.light.cooldown 2
execute if score @s stellarity.items.spellbook.light.cooldown matches 1..2 run function stellarity:items/spellbooks/light/ready
