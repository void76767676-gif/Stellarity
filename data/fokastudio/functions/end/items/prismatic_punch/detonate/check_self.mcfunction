scoreboard players operation #count foka.misc = @s foka.misc

execute if entity @s[tag=!foka.prismatic_blast.monochrome,tag=!foka.prismatic_blast.pastel] run function fokastudio:end/items/prismatic_punch/detonate/regular

execute if entity @s[tag=foka.prismatic_blast.piercing] run function fokastudio:end/items/prismatic_punch/detonate/piercing/start

execute if entity @s[tag=foka.prismatic_blast.monochrome] run function fokastudio:end/items/prismatic_punch/detonate/monochrome
execute if entity @s[tag=foka.prismatic_blast.pastel] run function fokastudio:end/items/prismatic_punch/detonate/pastel
