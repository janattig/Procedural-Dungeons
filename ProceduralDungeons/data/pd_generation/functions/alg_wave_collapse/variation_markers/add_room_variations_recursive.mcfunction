# summon new variation markers
execute at @e[tag=pd_room] run summon minecraft:marker ~ ~ ~ {Tags:["pd_room_variation", "pd_new"]}
execute as @e[tag=pd_room_variation, tag=pd_new] at @s run data modify entity @s data merge from storage procedural_dungeons:current_level connectivity_variations_tmp[0]
tag @e[tag=pd_new] remove pd_new

# remove the first element
data remove storage procedural_dungeons:current_level connectivity_variations_tmp[0]

# call again
execute if data storage procedural_dungeons:current_level connectivity_variations_tmp[0] run function pd_generation:alg_wave_collapse/variation_markers/add_room_variations_recursive
