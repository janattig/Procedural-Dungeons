# place a single room from here
execute at @e[tag=pd_grid_cursor] run execute align xyz positioned ~0.5 ~ ~0.5 run function pd_generation:rooms/summon_room_marker

# move cursor up by one step
scoreboard players operation %grid_cursor_z pd_level_parameters += %room_size pd_level_parameters
execute store result entity @e[tag=pd_grid_cursor,limit=1] Pos[2] double 1.0 run scoreboard players get %grid_cursor_z pd_level_parameters

# repeat if necessary (cursor)
execute if score %grid_cursor_z pd_level_parameters <= %max_z pd_level_parameters at @e[tag=pd_grid_cursor] run function pd_generation:rooms/grid/place_single_row
