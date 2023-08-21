
execute if entity @s[scores={stellarity.items.spellbook.natures_wrath.cooldown.shoot=1..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/shoot


# Prismatic Pearl
execute if entity @s[scores={stellarity.items.prismatic_pearl.cooldown=1..}] run function stellarity:items/prismatic_pearl/cooldown/countdown

execute if entity @s[predicate=stellarity:items/wearing_full_ancient_armor,predicate=stellarity:utils/player/is_running,predicate=!stellarity:utils/player/is_swimming] rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:items/armors/ancient_armor/visuals
execute if entity @s[tag=stellarity.holy_protection] rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:items/armors/hallowed_armor/visuals

scoreboard players reset @s stellarity.misc.loop.2t
