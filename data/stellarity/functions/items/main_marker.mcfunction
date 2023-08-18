function stellarity:items/spellbooks/main

# Prismatic Punch
execute if entity @s[tag=stellarity.prismatic_blast] run function stellarity:items/prismatic_punch/blast_loop

# Sariel
execute if entity @s[tag=stellarity.sariel.heal_orb] anchored eyes run function stellarity:items/sariel/orb_loop

# Starstruck Carcanet
execute if entity @s[tag=stellarity.carcanet.star] run function stellarity:items/starstruck_carcanet/star_loop

# Zephyr
execute if entity @s[tag=stellarity.zephyr.wind] anchored eyes run function stellarity:items/zephyr/wind_loop
