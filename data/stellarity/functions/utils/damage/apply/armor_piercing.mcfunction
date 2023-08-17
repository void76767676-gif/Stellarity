execute store result score #silent stellarity.misc run data get entity @s[type=!player] Silent
execute unless score #armor_penetration stellarity.misc matches 100 run data modify entity @s Silent set value 0b

$execute if score #has_attacker stellarity.misc matches 0 run damage @s $(full).$(decimal) stellarity:armor_piercing
$execute if score #has_attacker stellarity.misc matches 1 run damage @s $(full).$(decimal) stellarity:armor_piercing by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]

execute unless score #armor_penetration stellarity.misc matches 100 run stopsound @a[distance=..16] player minecraft:entity.player.hurt
execute unless score #armor_penetration stellarity.misc matches 100 run stopsound @a[distance=..16] player minecraft:entity.player.hurt_drown
execute unless score #armor_penetration stellarity.misc matches 100 run stopsound @a[distance=..16] player minecraft:entity.player.hurt_freeze
execute unless score #armor_penetration stellarity.misc matches 100 run stopsound @a[distance=..16] player minecraft:entity.player.hurt_on_fire
execute unless score #armor_penetration stellarity.misc matches 100 run stopsound @a[distance=..16] player minecraft:entity.player.hurt_sweet_berry_bush
execute unless score #armor_penetration stellarity.misc matches 100 run stopsound @a[distance=..16] player minecraft:enchant.thorns.hit

execute if score #silent stellarity.misc matches 1 run data modify entity @s Silent set value 1b
