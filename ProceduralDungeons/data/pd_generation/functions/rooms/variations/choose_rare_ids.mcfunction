# choose the room variation marker with the rarest id (which has not been used before)

# set all priorities of the markers to 0
execute as @e[tag=pd_room_variation, distance=..1] run scoreboard players set @s pd_room_priority 0
# set the room ids accordingly
execute as @e[tag=pd_room_variation, distance=..1] run execute store result score @s pd_room_id run data get entity @s data.id
execute as @e[tag=pd_room, tag=pd_spawned, distance=1..] run execute store result score @s pd_room_id run data get entity @s data.id

# find out for each room variation how many rooms there are with identical ids
tag @e[tag=pd_room_variation, distance=..1] remove pd_has_priority
execute as @e[tag=pd_room_variation, tag=!pd_has_priority, limit=1, distance=..1] run function pd_generation:rooms/variations/assign_priority_from_other_ids_recursive

# choose according to priority
function pd_generation:rooms/variations/choose_priority
