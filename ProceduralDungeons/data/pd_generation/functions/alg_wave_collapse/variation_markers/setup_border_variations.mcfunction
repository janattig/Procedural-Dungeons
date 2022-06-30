# delete all border variations
kill @e[tag=pd_border_variation]

# copy all border variations to temporary list
data modify storage procedural_dungeons:current_level border_variations_tmp set from storage procedural_dungeons:current_level border_variations

# recursively create single border variation at all borders
execute if data storage procedural_dungeons:current_level border_variations_tmp[0] run function pd_generation:alg_wave_collapse/variation_markers/add_border_variations_recursive

# remove temporary list
data remove storage procedural_dungeons:current_level border_variations_tmp


# make all border variations store their data also as a scoreboard
execute as @e[tag=pd_border_variation] at @s run execute store result score @s pd_room_border run data get entity @s data.border
