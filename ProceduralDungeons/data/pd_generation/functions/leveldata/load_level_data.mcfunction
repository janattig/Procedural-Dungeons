# load data of the current level (data only)
# is called indirectly whenever a new level is generated


# needs the %level_to_generate scoreboard value to be set (check)
execute unless score %level_to_generate pd_generation matches ..1 unless score %level_to_generate pd_generation matches 1.. run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" unable to process which level to generate "},{"text":"(specify scoreboard %level_to_generate pd_generation)","color":"red"}]


# clear data of the current level
function pd_generation:leveldata/clear_current_level_data

# check which tileset should be loaded
execute if score %level_to_generate pd_generation matches 5 run function pd_generation:leveldata/tilesets/bunny_jump/load
execute if score %level_to_generate pd_generation matches 4 run function pd_generation:leveldata/tilesets/canyon/load
execute if score %level_to_generate pd_generation matches -2 run function pd_generation:leveldata/tilesets/cave/load
execute if score %level_to_generate pd_generation matches 3 run function pd_generation:leveldata/tilesets/desert/load
execute if score %level_to_generate pd_generation matches 31 run function pd_generation:leveldata/tilesets/desert/load_desert_ruins
execute if score %level_to_generate pd_generation matches -3 run function pd_generation:leveldata/tilesets/sewer/load
execute if score %level_to_generate pd_generation matches 2 run function pd_generation:leveldata/tilesets/skyblock/load
execute if score %level_to_generate pd_generation matches -4 run function pd_generation:leveldata/tilesets/mine/load

execute if score %level_to_generate pd_generation matches 4321 run function pd_generation:leveldata/tilesets/demo_test/load




# add optional information: dimension (if it can be guessed)
execute unless data storage procedural_dungeons:current_level dimension run function pd_generation:leveldata/determine_dimension_number.mcfunction
# add optional information: room size (taken from first room)
execute unless data storage procedural_dungeons:current_level size run data modify storage procedural_dungeons:current_level size set from storage procedural_dungeons:current_level all_rooms[0].size



# give error messages if there is no dimension or size or rooms
execute unless data storage procedural_dungeons:current_level all_rooms[0] run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing data "},{"text":"(rooms)","color":"red"}]
execute unless data storage procedural_dungeons:current_level dimension run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing data "},{"text":"(dimension)","color":"red"}]
execute unless data storage procedural_dungeons:current_level size run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing data "},{"text":"(size)","color":"red"}]
