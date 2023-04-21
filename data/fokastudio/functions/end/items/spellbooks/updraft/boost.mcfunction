scoreboard players set @s foka.items.spellbook.updraft.cooldown 320

tag @s add foka.book_of_updraft.animation

effect give @s levitation 1 29 true

scoreboard players reset @s foka.items.spellbook.updraft.animation

function fokastudio:end/items/spellbooks/effects_all
playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 0.33 1
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.12 1
