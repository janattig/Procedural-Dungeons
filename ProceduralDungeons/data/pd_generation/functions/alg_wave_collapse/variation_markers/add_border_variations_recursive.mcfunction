# summon new variation markers
execute at @e[tag=pd_border] run summon minecraft:marker ~ ~ ~ {Tags:["pd_border_variation", "pd_new"]}
execute as @e[tag=pd_border_variation, tag=pd_new] at @s run data modify entity @s data.border set from storage procedural_dungeons:current_level border_variations_tmp[0]
tag @e[tag=pd_new] remove pd_new

# remove the first element
data remove storage procedural_dungeons:current_level border_variations_tmp[0]

# call again
execute if data storage procedural_dungeons:current_level border_variations_tmp[0] run function pd_generation:alg_wave_collapse/variation_markers/add_border_variations_recursive
