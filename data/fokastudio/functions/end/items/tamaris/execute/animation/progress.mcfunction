scoreboard players add @s foka.items.tamaris.animation.progress 1

execute if score @s foka.items.tamaris.animation.progress matches 1 run title @s actionbar " "

# Resource pack only
execute if score @s foka.items.tamaris.animation.progress matches 2 run function fokastudio:end/items/tamaris/execute/animation/playsound

execute if score @s foka.items.tamaris.animation.progress matches 5 run function fokastudio:end/items/tamaris/execute/animation/teleport_particles/fx

# Executing things as entity in question
execute if score @s foka.items.tamaris.animation.progress matches 5 run scoreboard players set @s foka.items.tamaris.execute_cooldown 7
execute if score @s foka.items.tamaris.animation.progress matches 5 run tag @s add foka.items.tamaris.no_warn
execute if score @s foka.items.tamaris.animation.progress matches 5 as @e[type=!#fokastudio:end/invalid_targets,distance=..10,limit=1,sort=nearest,tag=foka.items.tamaris.executable] run function fokastudio:end/items/tamaris/execute/animation/as_entity/2

# Remove player tag
execute if score @s foka.items.tamaris.animation.progress matches 5 run tag @s remove foka.items.tamaris.doing_execute
execute if score @s foka.items.tamaris.animation.progress matches 5 run scoreboard players reset @s foka.items.tamaris.animation.progress