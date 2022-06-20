# generate a cursor
kill @e[tag=pd_grid_cursor]
execute in overworld run summon minecraft:marker 0 0 0 {Tags:["pd_grid_cursor"]}

# tp it to the minimal coordinates
scoreboard players operation %target_tp_dimension pd_dimensions = %dimension pd_level_parameters
execute as @e[tag=pd_grid_cursor] at @s run function pd_dimensions:tp_self_to_target_dimension
execute store result entity @e[tag=pd_grid_cursor,limit=1] Pos[0] double 1.0 run scoreboard players get %min_x pd_level_parameters
execute store result entity @e[tag=pd_grid_cursor,limit=1] Pos[1] double 1.0 run scoreboard players get %start_y pd_level_parameters
execute store result entity @e[tag=pd_grid_cursor,limit=1] Pos[2] double 1.0 run scoreboard players get %min_z pd_level_parameters


# place all rows from the cursor on
execute at @e[tag=pd_grid_cursor, limit=1] run function pd_generation:rooms/grid/place_all_rows


# kill the cursor
kill @e[tag=pd_grid_cursor]

# reset scoreboards
scoreboard players reset %grid_cursor_x pd_level_parameters
scoreboard players reset %grid_cursor_z pd_level_parameters
