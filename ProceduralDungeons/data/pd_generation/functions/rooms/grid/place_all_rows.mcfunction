# backup the coordinates
execute store result score %grid_cursor_x pd_level_parameters run data get entity @e[tag=pd_grid_cursor, limit=1] Pos[0]
execute store result score %grid_cursor_z pd_level_parameters run data get entity @e[tag=pd_grid_cursor, limit=1] Pos[2]

# place a single row from here
execute at @e[tag=pd_grid_cursor] run function pd_generation:rooms/grid/place_single_row

# tp the cursor back
tp @e[tag=pd_grid_cursor] ~ ~ ~
# store the current position of the cursor
execute store result score %grid_cursor_x pd_level_parameters run data get entity @e[tag=pd_grid_cursor, limit=1] Pos[0]
execute store result score %grid_cursor_z pd_level_parameters run data get entity @e[tag=pd_grid_cursor, limit=1] Pos[2]

# move it up by one row
scoreboard players operation %grid_cursor_x pd_level_parameters += %room_size pd_level_parameters
execute store result entity @e[tag=pd_grid_cursor,limit=1] Pos[0] double 1.0 run scoreboard players get %grid_cursor_x pd_level_parameters

# repeat if necessary (cursor)
execute if score %grid_cursor_x pd_level_parameters <= %max_x pd_level_parameters at @e[tag=pd_grid_cursor] run function pd_generation:rooms/grid/place_all_rows
