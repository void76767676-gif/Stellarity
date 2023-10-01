scoreboard players set #mended stellarity.misc 0

#modify item
execute unless data storage stellarity:temp object.tag.stellar_durability{init:1b} run function stellarity:utils/durability/init_item

function stellarity:utils/durability/change_durability
execute unless score #mended stellarity.misc matches 1 run data remove storage stellarity:temp object.tag.display.Lore[-1]

#destroy item if broken
item modify entity @s armor.head stellarity:append_durability_lore
execute if score $player.out_0 stellarity.misc matches -1..0 at @s run playsound minecraft:entity.item.break player @a[distance=..16]
execute if score $player.out_0 stellarity.misc matches -1..0 run item replace entity @s armor.head with minecraft:air
