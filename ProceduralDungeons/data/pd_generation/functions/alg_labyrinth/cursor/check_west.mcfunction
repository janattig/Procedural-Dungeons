# check if the current room might want to connect to the west

# add a tag to the current room that it is being checked for west
tag @e[tag=pd_room, distance=..1, limit=1, sort=nearest] add lab_checking_west
tag @e[tag=pd_room, distance=..1, limit=1, sort=nearest] add lab_outgoing

# move to the west by the amount necessary
execute as @s at @s run function pd_generation:alg_labyrinth/cursor/move_west



# assume rooms connect
tag @s add lab_connect_rooms

# check if there is a room at the current position, if not: do not connect
execute at @s run execute unless entity @e[tag=pd_room, distance=..1] run tag @s remove lab_connect_rooms

# check if the two rooms connect
execute as @s[tag=lab_connect_rooms] at @s run execute as @e[tag=pd_room, tag=!lab_checked_east, distance=..1] run tag @s add lab_incoming

# remove connection if loop chance is not given
execute as @e[tag=lab_incoming, tag=lab_connected] run tag @s add lab_prevent_incoming
# remove connection if there are too many rooms connected already (and this goes into an unconnected room)
execute as @e[tag=lab_incoming, tag=!lab_connected] if score %num_rooms pd_level_parameters >= %max_num_rooms pd_level_parameters run tag @s add lab_prevent_incoming
# not incoming any more
execute as @e[tag=lab_prevent_incoming] run tag @s remove lab_incoming

# the incoming room is being connected now to the outgoing room
execute as @e[tag=lab_incoming] run tag @s add lab_connects_east
execute as @e[tag=lab_incoming] run tag @s add lab_connected
execute as @e[tag=lab_incoming] run tag @e[tag=lab_outgoing] add lab_connects_west

# show that the connections have been checked
execute as @e[tag=lab_outgoing] run tag @s add lab_checked_west
execute as @e[tag=lab_incoming] run tag @s add lab_checked_east
execute as @e[tag=lab_prevent_incoming] run tag @s add lab_checked_east



# remove the tags
tag @e[tag=pd_room] remove lab_outgoing
tag @e[tag=pd_room] remove lab_incoming
tag @e[tag=pd_room] remove lab_prevent_incoming
tag @e[tag=pd_room] remove lab_checking_west
tag @s remove lab_connect_rooms
