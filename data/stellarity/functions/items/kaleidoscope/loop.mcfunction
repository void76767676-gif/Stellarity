execute if score @s stellarity.items.kaleidoscope.charge matches 98 at @s run playsound stellarity:item.kaleidoscope.ready player @s ~ ~ ~ 1 1

execute unless score @s stellarity.items.kaleidoscope.charge matches 100.. run scoreboard players add @s stellarity.items.kaleidoscope.charge 1

execute unless score @s stellarity.items.kaleidoscope.charge matches 100.. unless score @s stellarity.items.kaleidoscope.sec matches 9.. run scoreboard players add @s stellarity.items.kaleidoscope.sec 1
execute if score @s stellarity.items.kaleidoscope.sec matches 9.. run scoreboard players add @s stellarity.items.kaleidoscope.charge 1
execute if score @s stellarity.items.kaleidoscope.sec matches 9.. run scoreboard players reset @s stellarity.items.kaleidoscope.sec

title @s actionbar [{"text":"•","color":"#EEEEEE"},{"text":" ⭐ ","color":"#FFCF37"},{"score":{"name": "@s","objective": "stellarity.items.kaleidoscope.charge"},"color":"#EEEEEE"},{"text":" ⭐ ","color":"#FFCF37"},{"text":"•","color":"#EEEEEE"}]
