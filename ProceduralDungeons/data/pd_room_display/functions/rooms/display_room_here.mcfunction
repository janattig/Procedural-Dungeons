# remporary level selection
scoreboard players set %level_to_generate pd_generation 4
scoreboard players set %min_grid_x pd_level_parameters -1
scoreboard players set %max_grid_x pd_level_parameters 1
scoreboard players set %min_grid_z pd_level_parameters -1
scoreboard players set %max_grid_z pd_level_parameters 1
scoreboard players set %max_num_rooms pd_level_parameters 5
scoreboard players set %lab_loop_percentage pd_level_parameters 10
scoreboard players operation %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters
function pd_generation:leveldata/load



# temporary marker setup
tag @e remove pd_current
summon minecraft:marker ~ ~ ~ {Tags:["pd_display", "pd_current"]}
data modify entity @e[tag=pd_current, tag=pd_display, sort=nearest, limit=1] data merge from storage procedural_dungeons:current_level all_variations[0]






# let the marker entity run the load function
execute as @e[tag=pd_current, tag=pd_display, sort=nearest, limit=1] at @s run function pd_room_display:rooms/load_room_from_marker
execute as @e[tag=pd_current, tag=pd_display, sort=nearest, limit=1] at @s run function pd_room_display:rooms/load_frame_from_marker

# remove tags from all current markers
tag @e remove pd_current