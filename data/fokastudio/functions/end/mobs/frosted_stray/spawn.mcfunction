tag @s add foka.frosted_stray

execute if predicate fokastudio:end/utils/chance/25percent run item replace entity @s weapon with stone_sword
execute if predicate fokastudio:end/utils/chance/3percent run function fokastudio:end/mobs/frosted_stray/give_frigid_harvester

attribute @s minecraft:generic.attack_damage modifier add e02b5f9f-6b28-43b8-9b3a-05d5b32ea718 "foka.damage_boost" 0.4 multiply_base
attribute @s minecraft:generic.max_health modifier add 44f2f651-1e6f-4aa9-9f17-92021947fc70 "foka.health_boost" 10 add
attribute @s minecraft:generic.armor modifier add 0d9d2682-dc1f-45c6-afcc-1a517b4d6db2 "foka.armor_boost" 4 add
attribute @s minecraft:generic.knockback_resistance modifier add 46741a9f-4fbf-49ed-8d82-4abc27db6a67 "foka.knockback_resistance" 0.25 add
attribute @s minecraft:generic.movement_speed modifier add ac60d56a-76b2-4e45-8321-b2c9c08303df "foka.movement_speed" 0.05 multiply
attribute @s minecraft:generic.follow_range modifier add 5c71dae2-ad6e-4d51-8d18-7bb74abbdbc1 "foka.follow_range" 0.33 multiply
attribute @s minecraft:zombie.spawn_reinforcements modifier add 4d5f1512-cde2-4447-af41-fd07eecf427c "foka.spawn_reinforcements" 0.13 add

data modify entity @s Health set value 30.0f
data modify entity @s DeathLootTable set value "fokastudio:end/mobs/frosted_stray"
