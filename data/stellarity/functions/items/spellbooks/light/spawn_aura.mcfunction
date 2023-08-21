scoreboard players set @s stellarity.items.spellbook.light.cooldown 48

execute align xyz run summon marker ~.5 ~.92 ~.5 {Tags:["stellarity.book_of_light.aura","stellarity.book_of_light","stellarity.marker"]}
execute align xyz run summon marker ~.5 ~.92 ~.5 {Tags:["stellarity.book_of_light.aura_2","stellarity.book_of_light","stellarity.marker"]}

playsound minecraft:block.conduit.activate player @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.evoker.cast_spell player @a[distance=0..] ~ ~ ~ 0.4 1
