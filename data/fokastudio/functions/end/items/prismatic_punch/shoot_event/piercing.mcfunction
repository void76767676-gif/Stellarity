kill @e[type=#fokastudio:end/ammo,limit=1,sort=nearest,tag=!foka.aware]

summon minecraft:marker ^ ^ ^ {Tags:["foka.prismatic_blast","foka.prismatic_blast.piercing"]}
tp @e[type=marker,limit=1,sort=nearest,tag=foka.prismatic_blast] ^ ^ ^ ~ ~

execute store result score @e[type=marker,limit=1,sort=nearest,tag=foka.prismatic_blast] foka.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:piercing"}].lvl 1 
