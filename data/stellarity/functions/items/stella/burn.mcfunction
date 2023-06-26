execute unless score @s stellarity.items.stella.fire_stacks matches 4.. run scoreboard players add @s stellarity.items.stella.fire_stacks 1

scoreboard players set #dot.damage stellarity.misc 15

scoreboard players operation #dot.damage stellarity.misc *= @s stellarity.items.stella.fire_stacks
scoreboard players set #dot.time stellarity.misc 120
scoreboard players set #dot.delay stellarity.misc 20

function stellarity:utils/dot/prismatic_inferno/apply
