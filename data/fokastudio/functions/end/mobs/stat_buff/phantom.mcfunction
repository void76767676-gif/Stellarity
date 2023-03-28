attribute @s minecraft:generic.attack_damage modifier add e02b5f9f-6b28-43b8-9b3a-05d5b32ea718 "foka.damage_boost" 0.3 multiply_base
attribute @s minecraft:generic.max_health modifier add 44f2f651-1e6f-4aa9-9f17-92021947fc70 "foka.health_boost" 12 add
attribute @s minecraft:generic.armor modifier add 0d9d2682-dc1f-45c6-afcc-1a517b4d6db2 "foka.armor_boost" 4 add
attribute @s minecraft:generic.knockback_resistance modifier add 46741a9f-4fbf-49ed-8d82-4abc27db6a67 "foka.knockback_resistance" 0.4 add

data modify entity @s Health set value 32.0f
data modify entity @s Size set value 3
data modify entity @s DeathLootTable set value "fokastudio:end/mobs/buffed/phantom"
