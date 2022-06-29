# make a new marker
execute in overworld run summon minecraft:marker 0 0 0 {Tags:["pd_connectivity_variation_tmp", "pd_current"]}

# call setup self function
execute as @e[tag=pd_connectivity_variation_tmp, tag=pd_current] at @s run function pd_generation:leveldata/connectivity_marker_setup_self

# check for duplicates
execute as @e[tag=pd_connectivity_variation_tmp, tag=pd_current, tag=!start, tag=!ttt_only] run execute as @e[tag=pd_connectivity_variation_tmp, tag=!pd_current, tag=!start, tag=!ttt_only] run execute if score @s pd_room_border_n = @e[tag=pd_current,limit=1] pd_room_border_n if score @s pd_room_border_s = @e[tag=pd_current,limit=1] pd_room_border_s if score @s pd_room_border_e = @e[tag=pd_current,limit=1] pd_room_border_e if score @s pd_room_border_w = @e[tag=pd_current,limit=1] pd_room_border_w if score @s pd_room_priority = @e[tag=pd_current,limit=1] pd_room_priority run tag @e[tag=pd_current] add pd_duplicate
execute as @e[tag=pd_connectivity_variation_tmp, tag=pd_current, tag=start, tag=!ttt_only] run execute as @e[tag=pd_connectivity_variation_tmp, tag=!pd_current, tag=start, tag=!ttt_only] run execute if score @s pd_room_border_n = @e[tag=pd_current,limit=1] pd_room_border_n if score @s pd_room_border_s = @e[tag=pd_current,limit=1] pd_room_border_s if score @s pd_room_border_e = @e[tag=pd_current,limit=1] pd_room_border_e if score @s pd_room_border_w = @e[tag=pd_current,limit=1] pd_room_border_w if score @s pd_room_priority = @e[tag=pd_current,limit=1] pd_room_priority run tag @e[tag=pd_current] add pd_duplicate
execute as @e[tag=pd_connectivity_variation_tmp, tag=pd_current, tag=start, tag=ttt_only] run execute as @e[tag=pd_connectivity_variation_tmp, tag=!pd_current, tag=start, tag=ttt_only] run execute if score @s pd_room_border_n = @e[tag=pd_current,limit=1] pd_room_border_n if score @s pd_room_border_s = @e[tag=pd_current,limit=1] pd_room_border_s if score @s pd_room_border_e = @e[tag=pd_current,limit=1] pd_room_border_e if score @s pd_room_border_w = @e[tag=pd_current,limit=1] pd_room_border_w if score @s pd_room_priority = @e[tag=pd_current,limit=1] pd_room_priority run tag @e[tag=pd_current] add pd_duplicate

# kill the marker if it is a duplicate
kill @e[tag=pd_connectivity_variation_tmp, tag=pd_current, tag=pd_duplicate]

# remove the current tag
tag @e[tag=pd_current] remove pd_current
