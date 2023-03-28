attribute @s minecraft:generic.attack_damage modifier add e02b5f9f-6b28-43b8-9b3a-05d5b32ea718 "foka.damage_boost" 0.2 multiply_base
attribute @s minecraft:generic.max_health modifier add 44f2f651-1e6f-4aa9-9f17-92021947fc70 "foka.health_boost" 10 add
attribute @s minecraft:generic.armor modifier add 0d9d2682-dc1f-45c6-afcc-1a517b4d6db2 "foka.armor_boost" 6 add

data modify entity @s Health set value 50.0f
data modify entity @s DeathLootTable set value "fokastudio:end/mobs/buffed/hoglin"
