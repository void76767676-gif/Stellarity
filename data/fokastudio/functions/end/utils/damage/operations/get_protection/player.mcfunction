function fokastudio:end/utils/damage/operations/get_protection/player/prot

execute if score #damage_type foka.misc matches 1 run function fokastudio:end/utils/damage/operations/get_protection/player/fire_prot
execute if score #damage_type foka.misc matches 2 run function fokastudio:end/utils/damage/operations/get_protection/player/projectile_prot
execute if score #damage_type foka.misc matches 3 run function fokastudio:end/utils/damage/operations/get_protection/player/blast_prot
