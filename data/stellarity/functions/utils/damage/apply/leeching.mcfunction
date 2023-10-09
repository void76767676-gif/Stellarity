$execute if score #has_attacker stellarity.misc matches 0 run damage @s $(full).$(decimal) stellarity:dot/leeching
$execute if score #has_attacker stellarity.misc matches 1 run damage @s $(full).$(decimal) stellarity:dot/leeching by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
