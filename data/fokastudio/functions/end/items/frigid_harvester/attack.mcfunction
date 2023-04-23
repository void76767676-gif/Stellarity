advancement revoke @s only fokastudio:end/events/items/attack_with_upgraded_aery_sword

# #cdamage stands for 'current damage'
# Idk if it would conflict with #damage in 'kill.mcfunction',
# but I am not taking any risks
execute store result score #cdamage foka.misc run data get entity @s SelectedItem.tag."foka.aery_sword.damage" 100

execute if score #cdamage foka.misc matches 300.. as @e[type=!#fokastudio:end/invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] at @s run function fokastudio:end/items/frigid_harvester/abilities
