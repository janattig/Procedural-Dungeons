# reset scoreboard values
scoreboard players reset %sizeX pd_display
scoreboard players reset %sizeY pd_display
scoreboard players reset %sizeZ pd_display
# save the sizes to scoreboard
execute as @e[type=marker, tag=pd_current, tag=pd_display, limit=1] at @s run execute store result score %sizeX pd_display run data get block ~ ~ ~ sizeX
execute as @e[type=marker, tag=pd_current, tag=pd_display, limit=1] at @s run execute store result score %sizeY pd_display run data get block ~ ~ ~ sizeY
execute as @e[type=marker, tag=pd_current, tag=pd_display, limit=1] at @s run execute store result score %sizeZ pd_display run data get block ~ ~ ~ sizeZ

# build the frame here
execute as @e[type=marker, tag=pd_current, tag=pd_display, limit=1] at @s run function pd_room_display:rooms/frame/build_frame_here