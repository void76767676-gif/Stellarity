scoreboard players set #temp1 stellarity.misc 0
execute store result score #temp1 stellarity.misc if predicate stellarity:utils/chance/33percent run loot spawn ~ ~ ~ loot stellarity:items/stella

scoreboard players set #temp2 stellarity.misc 0
execute store result score #temp2 stellarity.misc if predicate stellarity:utils/chance/33percent run loot spawn ~ ~ ~ loot stellarity:items/prismatic_pearl

scoreboard players set #temp3 stellarity.misc 0
execute store result score #temp3 stellarity.misc if predicate stellarity:utils/chance/33percent run loot spawn ~ ~ ~ loot stellarity:items/prismatic_punch

scoreboard players set #temp4 stellarity.misc 0
execute store result score #temp4 stellarity.misc if predicate stellarity:utils/chance/33percent run loot spawn ~ ~ ~ loot stellarity:items/trinkets/starstruck_carcanet

execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:items/trinkets/soaring_insignia

execute if score #temp1 stellarity.misc matches 0 if score #temp2 stellarity.misc matches 0 if score #temp3 stellarity.misc matches 0 if score #temp4 stellarity.misc matches 0 run loot spawn ~ ~ ~ loot stellarity:mobs/eol/loot

summon experience_orb ~ ~ ~ {Value:200s}
