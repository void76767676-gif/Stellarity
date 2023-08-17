$execute if score #has_attacker stellarity.misc matches 0 run damage @s $(full).$(decimal) stellarity:frostburn
$execute if score #has_attacker stellarity.misc matches 1 run damage @s $(full).$(decimal) stellarity:frostburn by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
