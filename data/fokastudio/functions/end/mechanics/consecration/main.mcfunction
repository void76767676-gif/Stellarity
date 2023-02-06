execute as @s[type=item,tag=!foka.consecration.tagged,tag=!foka.consecration.ignore] unless data entity @s Item.tag."foka.special_item" run function fokastudio:end/mechanics/consecration/tags

execute as @s[type=item,tag=foka.consecration.tagged,tag=!foka.consecration.ignore] run function fokastudio:end/mechanics/consecration/checks
