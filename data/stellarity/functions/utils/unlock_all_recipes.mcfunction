recipe take @s stellarity:events/unlock_all_recipes
advancement revoke @s only stellarity:events/unlock_all_recipes

tellraw @s [{"translate":"stellarity.unlock_all_recipes","fallback":"Please remove any 'Unlock All Recipes' type of packs/mods, as they cause various issues with other datapacks","color":"red","hoverEvent": {"action":"show_text","contents": {"translate":"stellarity","fallback":"Stellarity","italic": true,"color":"#CC26FF"}}}]
