# fill out the dimension number based on room tags
execute if data storage procedural_dungeons:current_level all_rooms[{map:"bunny_jump"}] store result storage procedural_dungeons:current_level dimension int 1 run scoreboard players get %bunny_jump_world pd_dimensions
execute if data storage procedural_dungeons:current_level all_rooms[{map:"canyon"}] store result storage procedural_dungeons:current_level dimension int 1 run scoreboard players get %canyon_world pd_dimensions
execute if data storage procedural_dungeons:current_level all_rooms[{map:"cave"}] store result storage procedural_dungeons:current_level dimension int 1 run scoreboard players get %cave_world pd_dimensions
execute if data storage procedural_dungeons:current_level all_rooms[{map:"desert"}] store result storage procedural_dungeons:current_level dimension int 1 run scoreboard players get %desert_world pd_dimensions
execute if data storage procedural_dungeons:current_level all_rooms[{map:"sewer"}] store result storage procedural_dungeons:current_level dimension int 1 run scoreboard players get %sewer_world pd_dimensions
execute if data storage procedural_dungeons:current_level all_rooms[{map:"skyblock"}] store result storage procedural_dungeons:current_level dimension int 1 run scoreboard players get %skyblock_world pd_dimensions
