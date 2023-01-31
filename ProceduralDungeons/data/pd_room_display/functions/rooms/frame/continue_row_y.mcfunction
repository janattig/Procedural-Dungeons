# set the current even/odd
scoreboard players operation %evenodd pd_display = %posY pd_display
scoreboard players operation %evenodd pd_display %= %2 pd_display

# set the block
setblock ~ ~ ~ obsidian
# maybe alternate for better visibility of meter
execute if score %evenodd pd_display matches 1 run setblock ~ ~ ~ crying_obsidian

# move over
tp @s ~ ~1 ~
scoreboard players add %posY pd_display 1

# maybe continue the row
execute if score %posY pd_display < %sizeY pd_display run execute at @s run function pd_room_display:rooms/frame/continue_row_y