# teleport the cursor to here
tp @e[tag=pd_display_cursor] ~1 ~ ~
function pd_room_display:rooms/frame/save_cursor_position

# set the scoreboard values for half way and for the starting block
scoreboard players set %posX pd_display 2
scoreboard players operation %half pd_display = %sizeX pd_display
scoreboard players operation %half pd_display /= %posX pd_display
scoreboard players set %posX pd_display 0

# decide if row is even or odd
scoreboard players operation %isodd pd_display = %sizeX pd_display
scoreboard players operation %isodd pd_display %= %2 pd_display

# start the row
execute as @e[tag=pd_display_cursor, limit=1] at @s run function pd_room_display:rooms/frame/continue_row_x