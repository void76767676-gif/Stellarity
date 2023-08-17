$execute if score #has_attacker stellarity.misc matches 0 run damage @s $(full).$(decimal) stellarity:kaleidoscope
$execute if score #has_attacker stellarity.misc matches 1 run damage @s $(full).$(decimal) stellarity:kaleidoscope by @e[limit=1,sort=nearest,tag=stellarity.damage.attacker]
