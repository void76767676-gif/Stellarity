data modify storage fokastudio:end/temp "natures_wrath.spells" append value "ocean"

scoreboard players set #in_water foka.misc 0
execute if block ~ ~ ~ water run scoreboard players set #in_water foka.misc 1
execute if block ~ 1 ~ water run scoreboard players set #in_water foka.misc 1
execute if score #in_water foka.misc matches 1 run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "ocean"
execute if score #in_water foka.misc matches 1 run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "ocean"
execute if score #in_water foka.misc matches 1 run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "ocean"
execute if score #in_water foka.misc matches 1 run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "ocean"
