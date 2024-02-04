fill ~ ~-1 ~ ~ ~1 ~ air replace observer
setblock ~ ~ ~ air

execute store result score #random stellarity.misc run random value 1..20

# White Shulker - Resistance, +10 Health - 10%
execute if score #random stellarity.misc matches 1..2 run \
	summon shulker ~ ~-1 ~ {Color:0,Health:40,Tags:["stellarity.end_city.white_shulker"],active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:1b,ambient:1b}],Attributes:[{Name:"generic.max_health",Base:40d}]}

# Orange Shulker - Fire Resistance, +5 Health, -5 Defense - 15%
execute if score #random stellarity.misc matches 3..5 run \
	summon shulker ~ ~-1 ~ {Color:1,Health:35,Tags:["stellarity.end_city.orange_shulker"],active_effects:[{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:1b,ambient:1b}],Attributes:[{Name:"generic.armor",Base:-5d},{Name:"generic.max_health",Base:35d}]}

# Pink Shulker - Regeneration, -10 Health - 20%
execute if score #random stellarity.misc matches 6..9 run \
	summon shulker ~ ~-1 ~ {Color:6,Health:20,Tags:["stellarity.end_city.pink_shulker"],active_effects:[{id:"minecraft:regeneration",duration:-1,amplifier:0,show_particles:1b,ambient:1b}],Attributes:[{Name:"generic.max_health",Base:20d}]}

# Magenta Shulker - +5 Defense - 15%
execute if score #random stellarity.misc matches 10..12 run \
	summon shulker ~ ~-1 ~ {Color:2,Tags:["stellarity.end_city.magenta_shulker"],Attributes:[{Name:"generic.armor",Base:5d}]}

# Purple Shulker - +15 Armor Toughness - 10%
execute if score #random stellarity.misc matches 13..14 run \
	summon shulker ~ ~-1 ~ {Color:10,Tags:["stellarity.end_city.purple_shulker"],Attributes:[{Name:"generic.armor_toughness",Base:15d}]}

# Just a Shulker - 30%
execute if score #random stellarity.misc matches 15..20 run \
	summon shulker ~ ~-1 ~
