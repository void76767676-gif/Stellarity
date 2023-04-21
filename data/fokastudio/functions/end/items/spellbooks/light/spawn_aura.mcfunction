scoreboard players set @s foka.items.spellbook.light.cooldown 620

execute align xyz run summon marker ~.5 ~.65 ~.5 {Tags:["foka.book_of_light.aura","foka.book_of_light"]}
execute align xyz run summon marker ~.5 ~.65 ~.5 {Tags:["foka.book_of_light.aura_2","foka.book_of_light"]}

playsound minecraft:block.conduit.activate player @a ~ ~ ~ 1 1
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.4 1
