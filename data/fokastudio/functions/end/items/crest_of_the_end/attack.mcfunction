advancement revoke @s only fokastudio:end/events/items/damage_with_crest

scoreboard players reset @s foka.items.crest.bonus_dmg

attribute @s generic.attack_damage modifier remove 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb

title @s actionbar " "

execute as @e[type=!#fokastudio:end/invalid_targets,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s positioned ~ ~1.2 ~ run function fokastudio:end/items/crest_of_the_end/sfx
