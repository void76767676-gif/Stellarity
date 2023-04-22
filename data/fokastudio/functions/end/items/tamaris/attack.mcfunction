advancement revoke @s only fokastudio:end/events/items/attack_with_tamaris

scoreboard players set #dot.damage foka.misc 30
scoreboard players set #dot.time foka.misc 160
scoreboard players set #dot.delay foka.misc 40

execute as @e[type=!#fokastudio:end/invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] run function fokastudio:end/utils/dot/dark_decay/apply
