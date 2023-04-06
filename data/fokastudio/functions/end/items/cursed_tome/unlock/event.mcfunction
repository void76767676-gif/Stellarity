execute store success score #has_tome foka.misc run clear @s written_book{foka.special_item:"cursed_tome"} 0

execute if score #has_tome foka.misc matches 1 run function fokastudio:end/items/cursed_tome/unlock/effects
