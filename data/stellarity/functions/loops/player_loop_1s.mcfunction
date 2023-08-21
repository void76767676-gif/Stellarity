# Shulker Tools
execute if entity @s[predicate=stellarity:items/holding_any_shulker_tool] run effect give @s haste 1 0 true

execute if entity @s[scores={stellarity.items.flask_of_frost.duration=1..}] run scoreboard players remove @s stellarity.items.flask_of_frost.duration 1

# Duskberry Night Vision
execute if entity @s[predicate=stellarity:items/holding_duskberry] run effect give @s night_vision 11 0 true

# Cooldowns
execute if entity @s[scores={stellarity.items.spellbook.conveyance.cooldown=1..}] run function stellarity:items/spellbooks/conveyance/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.updraft.cooldown=1..}] run function stellarity:items/spellbooks/updraft/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.light.cooldown=1..}] run function stellarity:items/spellbooks/light/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.natures_wrath.cooldown.wolves=1..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/wolves

scoreboard players reset @s stellarity.misc.loop.1s
