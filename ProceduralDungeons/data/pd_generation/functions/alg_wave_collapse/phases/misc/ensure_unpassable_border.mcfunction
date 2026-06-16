# remove all variations that are passable if priority decisions roll successfull
scoreboard players set %LCG_rand_min pd_math 0
scoreboard players set %LCG_rand_max pd_math 100
function pd_math:rand/update
execute if score %LCG_rand pd_math < %priority_percentage pd_level_parameters run execute as @e[tag=pd_border_variation, distance=..0.1] run execute if score @s pd_room_border matches 1.. run kill @s
execute unless score %LCG_rand pd_math < %priority_percentage pd_level_parameters run function pd_generation:alg_wave_collapse/phases/misc/ensure_passable_border



