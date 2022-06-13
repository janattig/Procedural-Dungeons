### sets the current dimension scoreboard value based on which dimension the call is happening in
scoreboard players reset %current_dimension pd_dimensions
execute if predicate pd_dimensions:is_in_overworld run scoreboard players operation %current_dimension pd_dimensions = %overworld pd_dimensions
execute if predicate pd_dimensions:is_in_bunny_jump_world run scoreboard players operation %current_dimension pd_dimensions = %bunny_jump_world pd_dimensions
execute if predicate pd_dimensions:is_in_canyon_world run scoreboard players operation %current_dimension pd_dimensions = %canyon_world pd_dimensions
execute if predicate pd_dimensions:is_in_cave_world run scoreboard players operation %current_dimension pd_dimensions = %cave_world pd_dimensions
execute if predicate pd_dimensions:is_in_desert_world run scoreboard players operation %current_dimension pd_dimensions = %desert_world pd_dimensions
execute if predicate pd_dimensions:is_in_sewer_world run scoreboard players operation %current_dimension pd_dimensions = %sewer_world pd_dimensions
execute if predicate pd_dimensions:is_in_skyblock_world run scoreboard players operation %current_dimension pd_dimensions = %skyblock_world pd_dimensions
