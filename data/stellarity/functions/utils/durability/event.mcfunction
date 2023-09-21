advancement revoke @s only stellarity:events/custom_item_durability_change
advancement revoke @s only stellarity:events/custom_item_mend

tag @s add stellarity.durability.scheduled
schedule function stellarity:utils/durability/scheduled 1t
