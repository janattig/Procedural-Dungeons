# check if level can be generated because previous generation has completed
execute if score %level_fully_generated pd_generation matches 0 run tellraw @a ["",{"text":"> "},{"text":"PD ERROR:","color":"red"},{"text":" cannot generate level "},{"text":"(level generation in progress)","color":"red"}]
execute unless score %level_fully_generated pd_generation matches 0 run function pd_maps:map_device/open_map_from_map_device
