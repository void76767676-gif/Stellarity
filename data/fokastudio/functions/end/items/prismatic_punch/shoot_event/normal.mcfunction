kill @e[type=#fokastudio:end/ammo,limit=1,sort=nearest,tag=!foka.aware]

summon minecraft:marker ^ ^ ^ {Tags:["foka.prismatic_blast"]}
tp @e[type=marker,limit=1,sort=nearest,tag=foka.prismatic_blast] ^ ^ ^ ~ ~
