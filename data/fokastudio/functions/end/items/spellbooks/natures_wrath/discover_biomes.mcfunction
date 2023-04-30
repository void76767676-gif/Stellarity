execute store success score #has_book foka.misc run clear @s knowledge_book{foka.special_item:"natures_wrath"} 0

execute if score #has_book foka.misc matches 1 run function fokastudio:end/items/spellbooks/natures_wrath/discover_fx
