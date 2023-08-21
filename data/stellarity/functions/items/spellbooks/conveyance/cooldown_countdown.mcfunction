# Every second
scoreboard players remove @s stellarity.items.spellbook.conveyance.cooldown 1
execute if score @s stellarity.items.spellbook.conveyance.cooldown matches 1 run function stellarity:items/spellbooks/conveyance/ready
