execute store result score #random stellarity.misc run random value 1..2

$execute if score #random stellarity.misc matches 1 run place template stellarity:end_city/top_tower/floor_2/1 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 2 run place template stellarity:end_city/top_tower/floor_2/2 ~ ~ ~ $(direction)
