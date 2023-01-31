# builds a frame at the current position with dimensions specified in the scoreboard

# reset the current cursor position
scoreboard players set %posX pd_display 0
scoreboard players set %posY pd_display 0
scoreboard players set %posZ pd_display 0
# reset even / odd value
scoreboard players reset %half pd_display
scoreboard players reset %isodd pd_display
# set tmp values
scoreboard players set %0 pd_display 0
scoreboard players set %1 pd_display 1
scoreboard players set %2 pd_display 2


# summon a cursor
kill @e[tag=pd_display_cursor]
summon minecraft:marker ~ ~ ~ {Tags:["pd_display_cursor"]}

# save current position marker
function pd_room_display:rooms/frame/save_cursor_position


# mark all corners
function pd_room_display:rooms/frame/mark_corners

# build all rows along x
execute at @e[tag=pd_display_corner, tag=corner_000] run function pd_room_display:rooms/frame/build_row_x
execute at @e[tag=pd_display_corner, tag=corner_010] run function pd_room_display:rooms/frame/build_row_x
execute at @e[tag=pd_display_corner, tag=corner_001] run function pd_room_display:rooms/frame/build_row_x
execute at @e[tag=pd_display_corner, tag=corner_011] run function pd_room_display:rooms/frame/build_row_x

# build all rows along y
execute at @e[tag=pd_display_corner, tag=corner_000] run function pd_room_display:rooms/frame/build_row_y
execute at @e[tag=pd_display_corner, tag=corner_100] run function pd_room_display:rooms/frame/build_row_y
execute at @e[tag=pd_display_corner, tag=corner_001] run function pd_room_display:rooms/frame/build_row_y
execute at @e[tag=pd_display_corner, tag=corner_101] run function pd_room_display:rooms/frame/build_row_y

# build all rows along z
execute at @e[tag=pd_display_corner, tag=corner_000] run function pd_room_display:rooms/frame/build_row_z
execute at @e[tag=pd_display_corner, tag=corner_100] run function pd_room_display:rooms/frame/build_row_z
execute at @e[tag=pd_display_corner, tag=corner_010] run function pd_room_display:rooms/frame/build_row_z
execute at @e[tag=pd_display_corner, tag=corner_110] run function pd_room_display:rooms/frame/build_row_z





# kill the cursor
kill @e[tag=pd_display_cursor]
# kill all corner markers
kill @e[tag=pd_display_corner]


# reset the current cursor position
scoreboard players reset %posX pd_display
scoreboard players reset %posY pd_display
scoreboard players reset %posZ pd_display
scoreboard players reset %cursorX pd_display
scoreboard players reset %cursorY pd_display
scoreboard players reset %cursorZ pd_display
scoreboard players reset %half pd_display
scoreboard players reset %isodd pd_display
scoreboard players reset %evenodd pd_display
# reset temporary variables
scoreboard players reset %0 pd_display
scoreboard players reset %1 pd_display
scoreboard players reset %2 pd_display