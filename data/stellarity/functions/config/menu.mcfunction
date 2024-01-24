tellraw @s [{"text":"Stellarity","color":"#f100f1"}," ",{"text":"Configuration","color":"white"}]

tellraw @s ["\n",{"text":"1","color":"green"},{"text":" stands for ","color":"white"},{"text":"Enabled","color":"green"},{"text":" while ","color":"white"},{"text":"0","color":"red"},{"text":" is ","color":"white"},{"text":"Disabled","color":"red"},"\n\n",{"text":"Click config entries' names to edit them","color":"white"}]

function stellarity:utils/tellraw/config {title:"Join Message",description:"Whether to send a short message about Stellarity being loaded upon entering this world. Modpack developers are asked to check the 'Disable Join Message Globally' addon!",default:'{"text":"Enabled","color":"#91FF7B"}',score:"stellarity.config.join_message",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Always Generate Egg",description:"Always spawns a Dragon Egg after killing the Ender Dragon. If disabled, follows vanilla spawn rules of only 1 Egg and only the first kill.",default:'{"text":"Disabled","color":"#FF7B7B"}',score:"stellarity.config.always_generate_egg",numerical:0,suggested_value:0}

function stellarity:utils/tellraw/config {title:"Dragon Max Health",description:"Changes maximum health of the Ender Dragon. Max: 1024",default:'{"text":"300","color":"#EEEEEE"}',score:"stellarity.config.dragon_health",numerical:1,suggested_value:300}

function stellarity:utils/tellraw/config {title:"Empress of Light Max Health",description:"Changes maximum health of the Empress of Light. Max: 1024",default:'{"text":"500","color":"#EEEEEE"}',score:"stellarity.config.eol_health",numerical:1,suggested_value:500}

function stellarity:utils/tellraw/config {title:"Enable Disenchanting",description:"Makes Altar of The Accursed able to unbind enchantments from an enchanted item by combining it with a normal book. Could be considered a bit overpowered.",default:'{"text":"Enabled","color":"#91FF7B"}',score:"stellarity.config.allow_disenchanting",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Enable Treasure Heads",description:"Makes Treasure Heads randomly generate inside of some loot chests (The End). They serve as some funny little collectibles.",default:'{"text":"Enabled","color":"#91FF7B"}',score:"stellarity.config.enable_treasure_heads",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Dragon Music Loop Delay",description:"Number of ticks Dragon's boss theme is going to loop after. Only edit if you actually have a reason to.",default:'{"text":"4230","color":"#EEEEEE"}',score:"stellarity.config.track_loop_delay.dragon",numerical:1,suggested_value:4230}

function stellarity:utils/tellraw/config {title:"EoL Loop Delay",description:"Number of ticks Empress of Light's boss theme is going to loop after. Only edit if you actually have a reason to.",default:'{"text":"3800","color":"#EEEEEE"}',score:"stellarity.config.track_loop_delay.eol",numerical:1,suggested_value:3800}

tellraw @s {"text":"                                ","color":"gray","strikethrough":true,"bold":true}
