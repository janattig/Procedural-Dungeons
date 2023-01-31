# has to be execute at the marker of the current colum

# move all remaining variations to here
tp @e[tag=pd_room_variation, distance=0..] ~ ~ ~
# move all room variations over along x
execute as @e[tag=pd_room_variation, distance=0..] at @s run function pd_room_display:markers/move_self_along_x


# select the next column
execute as @e[tag=pd_room_variation, distance=0.., limit=1] at @s run function pd_room_display:markers/select_current_colum

# schedule room displaying
schedule function pd_room_display:scheduling/display_next_room 20t