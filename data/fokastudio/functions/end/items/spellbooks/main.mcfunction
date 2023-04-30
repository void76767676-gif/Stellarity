# Conveyance
execute as @a[scores={foka.items.spellbook.conveyance.cooldown=1..}] run function fokastudio:end/items/spellbooks/conveyance/cooldown_countdown
execute as @e[type=marker,tag=foka.book_of_conveyance] at @s run function fokastudio:end/items/spellbooks/conveyance/loop

# Updraft
execute as @a[scores={foka.items.spellbook.updraft.cooldown=1..}] run function fokastudio:end/items/spellbooks/updraft/cooldown_countdown
execute as @a[tag=foka.book_of_updraft.animation] at @s run function fokastudio:end/items/spellbooks/updraft/animation

# Light
execute as @a[scores={foka.items.spellbook.light.cooldown=1..}] run function fokastudio:end/items/spellbooks/light/cooldown_countdown
execute as @e[type=marker,tag=foka.book_of_light.aura] at @s run function fokastudio:end/items/spellbooks/light/aura_loop

# Nature's Wrath
execute as @a[scores={foka.items.spellbook.natures_wrath.cooldown.shoot=1..}] run function fokastudio:end/items/spellbooks/natures_wrath/cooldown_countdown/shoot
execute as @a[scores={foka.items.spellbook.natures_wrath.cooldown.wolves=1..}] run function fokastudio:end/items/spellbooks/natures_wrath/cooldown_countdown/wolves
execute as @e[type=marker,tag=foka.natures_wrath.spirit] at @s run function fokastudio:end/items/spellbooks/natures_wrath/spirit/loop
execute as @e[type=wolf,tag=foka.natures_wrath.spirit_wolf] at @s run function fokastudio:end/items/spellbooks/natures_wrath/wolves/loop
