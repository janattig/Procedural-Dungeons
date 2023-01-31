# set the current even/odd
scoreboard players operation %evenodd pd_display = %posZ pd_display
scoreboard players operation %evenodd pd_display %= %2 pd_display

# set the block
setblock ~ ~ ~ obsidian
# maybe alternate for better visibility of meter
execute if score %isodd pd_display matches 1 run execute if score %evenodd pd_display matches 1 run setblock ~ ~ ~ crying_obsidian
execute if score %isodd pd_display matches 0 run execute if score %posZ pd_display < %half pd_display run execute if score %evenodd pd_display matches 1 run setblock ~ ~ ~ crying_obsidian
execute if score %isodd pd_display matches 0 run execute if score %posZ pd_display > %half pd_display run execute if score %evenodd pd_display matches 0 run setblock ~ ~ ~ crying_obsidian
# maybe mark the half way point
execute if score %isodd pd_display matches 1 run execute if score %posZ pd_display = %half pd_display run setblock ~ ~ ~ ancient_debris
execute if score %isodd pd_display matches 0 run execute if score %posZ pd_display = %half pd_display run fill ~ ~ ~ ~ ~ ~-1 ancient_debris


# move over
tp @s ~ ~ ~1
scoreboard players add %posZ pd_display 1

# maybe continue the row
execute if score %posZ pd_display < %sizeZ pd_display run execute at @s run function pd_room_display:rooms/frame/continue_row_z