# function to set the portal target to the location of the function call

# reset all coordinates
scoreboard players reset %target_x pd_portal_coordinates
scoreboard players reset %target_y pd_portal_coordinates
scoreboard players reset %target_z pd_portal_coordinates
scoreboard players reset %target_dim pd_portal_coordinates

# let the dimension scoreboard update itself (so that the number of the dimension is stored)
function pd_dimensions:set_current_dimension_scoreboard
# store the dimension
scoreboard players operation %target_dim pd_portal_coordinates = %current_dimension pd_dimensions


# summon a temporary entity from which to copy the pd_portal_coordinates
kill @e[tag=pd_portal_tmp_marker]
summon minecraft:marker ~ ~ ~ {Tags:["pd_portal_tmp_marker"]}
# write coordinates to scoreboard
execute store result score %target_x pd_portal_coordinates run data get entity @e[tag=pd_portal_tmp_marker, limit=1, sort=nearest] Pos[0] 100
execute store result score %target_y pd_portal_coordinates run data get entity @e[tag=pd_portal_tmp_marker, limit=1, sort=nearest] Pos[1] 100
execute store result score %target_z pd_portal_coordinates run data get entity @e[tag=pd_portal_tmp_marker, limit=1, sort=nearest] Pos[2] 100
# kill temporary entity
kill @e[tag=pd_portal_tmp_marker]
