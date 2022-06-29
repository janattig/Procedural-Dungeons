# copy all room variations to temporary list
data modify storage procedural_dungeons:current_level all_variations_tmp set from storage procedural_dungeons:current_level all_variations
# make new list with connectivity variations
data modify storage procedural_dungeons:current_level connectivity_variations set value []

# recursively create single connectivity variation marker
kill @e[tag=pd_connectivity_variation_tmp]
execute if data storage procedural_dungeons:current_level all_variations_tmp[0] run function pd_generation:leveldata/generate_single_connectivity_variation_recursive

# remove temporary list
data remove storage procedural_dungeons:current_level all_variations_tmp

# remove unnecessary data for merge
execute as @e[tag=pd_connectivity_variation_tmp] at @s run data remove entity @s data.file
execute as @e[tag=pd_connectivity_variation_tmp] at @s run data remove entity @s data.id
execute as @e[tag=pd_connectivity_variation_tmp] at @s run data remove entity @s data.posX
execute as @e[tag=pd_connectivity_variation_tmp] at @s run data remove entity @s data.posY
execute as @e[tag=pd_connectivity_variation_tmp] at @s run data remove entity @s data.posZ
execute as @e[tag=pd_connectivity_variation_tmp] at @s run data remove entity @s data.rotation

# add variations for all markers back into data storage
execute as @e[tag=pd_connectivity_variation_tmp] at @s run data modify storage procedural_dungeons:current_level connectivity_variations append from entity @s data
# kill all variations
kill @e[tag=pd_connectivity_variation_tmp]
