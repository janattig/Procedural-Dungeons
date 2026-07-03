# summon new variation markers for the 0th element of the room variation list at all room markers
execute at @e[tag=pd_room] run summon minecraft:marker ~ ~ ~ {Tags:["pd_room_variation", "pd_new"]}
# initialize new element
execute as @e[tag=pd_room_variation, tag=pd_new] at @s run function pd_generation:alg_wave_collapse/variation_markers/setup_new_room_variation_from_data

# directly check these variations to kill those which cannot be supported right away
execute as @e[tag=pd_room_variation, tag=pd_new] at @s run function pd_generation:alg_wave_collapse/variation_markers/validation/check_room_variation 
execute as @e[tag=pd_room_variation, tag=pd_new, tag=wfc_unsupported] at @s run kill @s

# new elements are now handled
tag @e[tag=pd_new] remove pd_new

# maybe call again if there are more variations in the global list
data remove storage procedural_dungeons:current_level connectivity_variations_tmp[0]
execute if data storage procedural_dungeons:current_level connectivity_variations_tmp[0] run function pd_generation:alg_wave_collapse/variation_markers/add_room_variations_recursive
