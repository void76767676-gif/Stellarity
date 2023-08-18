# Every 2 ticks
scoreboard players remove @s stellarity.items.spellbook.conveyance.cooldown 2
execute if score @s stellarity.items.spellbook.conveyance.cooldown matches 1..2 run function stellarity:items/spellbooks/conveyance/ready
