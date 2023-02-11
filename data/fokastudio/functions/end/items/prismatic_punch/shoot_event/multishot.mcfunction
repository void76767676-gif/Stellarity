kill @e[type=#fokastudio:end/ammo,limit=3,sort=nearest,tag=!foka.aware]

summon minecraft:marker ^ ^ ^ {Tags:["foka.prismatic_blast"]}
tp @e[type=marker,limit=1,sort=nearest,tag=foka.prismatic_blast,tag=!foka.prismatic_blast.pastel,tag=!foka.prismatic_blast.monochrome] ^ ^ ^ ~ ~

summon minecraft:marker ^ ^ ^ {Tags:["foka.prismatic_blast","foka.prismatic_blast.monochrome"]}
tp @e[type=marker,limit=1,sort=nearest,tag=foka.prismatic_blast.monochrome] ^ ^ ^ ~25 ~
execute rotated ~25 ~ run function fokastudio:end/items/prismatic_punch/shoot_event/particles

summon minecraft:marker ^ ^ ^ {Tags:["foka.prismatic_blast","foka.prismatic_blast.pastel"]}
tp @e[type=marker,limit=1,sort=nearest,tag=foka.prismatic_blast.pastel] ^ ^ ^ ~-25 ~
execute rotated ~-25 ~ run function fokastudio:end/items/prismatic_punch/shoot_event/particles
