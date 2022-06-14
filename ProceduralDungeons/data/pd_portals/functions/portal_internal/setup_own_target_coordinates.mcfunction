# copy the coordinates to the correct data
data modify entity @s data merge value {destination:[0d,0d,0d], destination_dim:1b}
# set the coordinates from the scoreboard
execute store result entity @s data.destination[0] double 0.01 run scoreboard players get %target_x pd_portal_coordinates
execute store result entity @s data.destination[1] double 0.01 run scoreboard players get %target_y pd_portal_coordinates
execute store result entity @s data.destination[2] double 0.01 run scoreboard players get %target_z pd_portal_coordinates
execute store result entity @s data.destination_dim int 1 run scoreboard players get %target_dim pd_portal_coordinates
