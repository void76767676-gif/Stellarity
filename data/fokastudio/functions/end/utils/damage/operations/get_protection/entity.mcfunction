function fokastudio:end/utils/damage/operations/get_protection/entity/prot

execute if score #damage_type foka.misc matches 1 run function fokastudio:end/utils/damage/operations/get_protection/entity/fire_prot
execute if score #damage_type foka.misc matches 2 run function fokastudio:end/utils/damage/operations/get_protection/entity/projectile_prot
execute if score #damage_type foka.misc matches 3 run function fokastudio:end/utils/damage/operations/get_protection/entity/blast_prot
