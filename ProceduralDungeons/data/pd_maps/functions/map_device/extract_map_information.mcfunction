# ONLY FOR DEBUGGING: SPECIFY STUFF EXPLICITLY

# save the data from the map into the scoreboards of the level generation
execute store result score %level_to_generate pd_generation run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.id
execute store result score %min_grid_x pd_level_parameters run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.min_x
execute store result score %max_grid_x pd_level_parameters run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.max_x
execute store result score %min_grid_z pd_level_parameters run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.min_z
execute store result score %max_grid_z pd_level_parameters run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.max_z
execute store result score %max_num_rooms pd_level_parameters run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.num_rooms
execute store result score %lab_loop_percentage pd_level_parameters run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.lab_loop_percentage
execute store result score %priority_percentage pd_level_parameters run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.priority_percentage
execute store result score %algorithm pd_level_parameters run data get entity @e[tag=pd_active_map_device, limit=1] Item.tag.algorithm
data modify storage procedural_dungeons:current_map portal_target set from entity @e[tag=pd_active_map_device, limit=1] Item.tag.portal_target
