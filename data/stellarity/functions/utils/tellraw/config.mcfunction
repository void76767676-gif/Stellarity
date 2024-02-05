# {"text": "| ","color":"gray","bold":true}

tellraw @s {"text":"                                ","color":"gray","strikethrough":true,"bold":true}

$tellraw @s {"text":"$(title)","color":"#C076E5","bold":true,"hoverEvent": {"action": "show_text","contents": [{"text": "$(score)","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},$(default)]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config $(score) $(suggested_value)"}}

tellraw @s " "

$tellraw @s [" ",{"text":"$(description)","color":"#C8ADD6"}]

tellraw @s " "

$scoreboard players set #numerical stellarity.misc $(numerical)

$execute if score #numerical stellarity.misc matches 0 if score #stellarity.config $(score) matches 1 run tellraw @s [{"text": "| ","color":"green","bold":true},{"text":"Enabled","color":"#91FF7B"}]
$execute if score #numerical stellarity.misc matches 0 if score #stellarity.config $(score) matches 0 run tellraw @s [{"text": "| ","color":"red","bold":true},{"text":"Disabled","color":"#FF7B7B"}]

$execute if score #numerical stellarity.misc matches 1 run tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":"Current Value: ","color": "#EEEEEE","bold":false},{"score":{"name": "#stellarity.config","objective": "$(score)"},"color": "#EEEEEE"}]
