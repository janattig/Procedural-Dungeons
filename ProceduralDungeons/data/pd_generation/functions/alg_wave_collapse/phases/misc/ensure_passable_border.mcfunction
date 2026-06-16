# remove all variations that are not passable
execute as @e[tag=pd_border_variation, distance=..0.1] run execute unless score @s pd_room_border matches 1.. run kill @s