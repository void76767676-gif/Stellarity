scoreboard players add @s foka.items.fish.crystal_heartfish.total_consumed 1
function fokastudio:end/items/fish/crystal_heartfish/increase_max_hp

execute if score @s foka.items.fish.crystal_heartfish.total_consumed matches 10 run advancement grant @s only fokastudio:end/exploration/topped_off

summon area_effect_cloud ~ ~ ~ {Tags:["foka.items.fish.crystal_heartfish.aec"],Duration:21}
