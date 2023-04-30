particle block oak_sapling ~ ~ ~ 0 0 0 1 18 normal
particle firework ~ ~ ~ 0 0 0 0.1 12 normal
playsound block.grass.break neutral @a ~ ~ ~ 1 0.8
playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1 1

execute unless score @s foka.misc2 matches 6.. run effect give @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] health_boost 17 0
execute if score @s foka.misc2 matches 6.. run effect give @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] health_boost 17 1

execute unless score @s foka.misc2 matches 6.. run effect give @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] minecraft:instant_health 1 0 true
execute if score @s foka.misc2 matches 6.. run effect give @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] minecraft:instant_health 1 1 true

kill @s

