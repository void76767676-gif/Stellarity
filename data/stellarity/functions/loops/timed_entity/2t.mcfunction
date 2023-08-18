execute if entity @s[scores={stellarity.items.spirit_dagger.attract_cooldown=1..}] run function stellarity:items/spirit_dagger/entity_loop
execute if entity @s[scores={stellarity.items.dragonblade.cooldown=1..}] run function stellarity:items/dragonblade/cooldown
execute if entity @s[scores={stellarity.items.dragonblade.stacks=1..}] run function stellarity:items/dragonblade/entity_loop
execute if entity @s[tag=stellarity.items.tamaris.executable] anchored eyes rotated ~ 0 run function stellarity:items/tamaris/execute/indicator
execute if entity @s[scores={stellarity.items.tamaris.execute_cooldown=1..}] run function stellarity:items/tamaris/execute/cooldown_countdown
