# teleport the cursor to here
tp @e[tag=pd_display_cursor] ~ ~ ~1
function pd_room_display:rooms/frame/save_cursor_position

# set the scoreboard values for half way and for the starting block
scoreboard players set %posZ pd_display 2
scoreboard players operation %half pd_display = %sizeZ pd_display
scoreboard players operation %half pd_display /= %posZ pd_display
scoreboard players set %posZ pd_display 0

# decide if row is even or odd
scoreboard players operation %isodd pd_display = %sizeZ pd_display
scoreboard players operation %isodd pd_display %= %2 pd_display

# start the row
execute as @e[tag=pd_display_cursor, limit=1] at @s run function pd_room_display:rooms/frame/continue_row_z