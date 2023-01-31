# delete all corner markers
kill @e[tag=pd_display_corner]






# corner 0 0 0
tp @e[tag=pd_display_cursor, limit=1] @e[tag=pd_current, tag=pd_display, limit=1]
function pd_room_display:rooms/frame/save_cursor_position
execute as @e[tag=pd_display_cursor, limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_display_corner", "corner_000"]}




# corner +1 0 0
tp @e[tag=pd_display_cursor, limit=1] @e[tag=pd_current, tag=pd_display, limit=1]
function pd_room_display:rooms/frame/save_cursor_position
scoreboard players operation %cursorX pd_display += %sizeX pd_display
scoreboard players add %cursorX pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[0] double 1.0 run scoreboard players get %cursorX pd_display
execute as @e[tag=pd_display_cursor, limit=1] at @s run setblock ~ ~ ~ bedrock
execute as @e[tag=pd_display_cursor, limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_display_corner", "corner_100"]}

# corner 0 +1 0
tp @e[tag=pd_display_cursor, limit=1] @e[tag=pd_current, tag=pd_display, limit=1]
function pd_room_display:rooms/frame/save_cursor_position
scoreboard players operation %cursorY pd_display += %sizeY pd_display
scoreboard players add %cursorY pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[1] double 1.0 run scoreboard players get %cursorY pd_display
execute as @e[tag=pd_display_cursor, limit=1] at @s run setblock ~ ~ ~ bedrock
execute as @e[tag=pd_display_cursor, limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_display_corner", "corner_010"]}


# corner 0 0 +1
tp @e[tag=pd_display_cursor, limit=1] @e[tag=pd_current, tag=pd_display, limit=1]
function pd_room_display:rooms/frame/save_cursor_position
scoreboard players operation %cursorZ pd_display += %sizeZ pd_display
scoreboard players add %cursorZ pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[2] double 1.0 run scoreboard players get %cursorZ pd_display
execute as @e[tag=pd_display_cursor, limit=1] at @s run setblock ~ ~ ~ bedrock
execute as @e[tag=pd_display_cursor, limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_display_corner", "corner_001"]}




# corner +1 0 +1
tp @e[tag=pd_display_cursor, limit=1] @e[tag=pd_current, tag=pd_display, limit=1]
function pd_room_display:rooms/frame/save_cursor_position
scoreboard players operation %cursorX pd_display += %sizeX pd_display
scoreboard players add %cursorX pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[0] double 1.0 run scoreboard players get %cursorX pd_display
scoreboard players operation %cursorZ pd_display += %sizeZ pd_display
scoreboard players add %cursorZ pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[2] double 1.0 run scoreboard players get %cursorZ pd_display
execute as @e[tag=pd_display_cursor, limit=1] at @s run setblock ~ ~ ~ bedrock
execute as @e[tag=pd_display_cursor, limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_display_corner", "corner_101"]}

# corner +1 +1 0
tp @e[tag=pd_display_cursor, limit=1] @e[tag=pd_current, tag=pd_display, limit=1]
function pd_room_display:rooms/frame/save_cursor_position
scoreboard players operation %cursorX pd_display += %sizeX pd_display
scoreboard players add %cursorX pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[0] double 1.0 run scoreboard players get %cursorX pd_display
scoreboard players operation %cursorY pd_display += %sizeY pd_display
scoreboard players add %cursorY pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[1] double 1.0 run scoreboard players get %cursorY pd_display
execute as @e[tag=pd_display_cursor, limit=1] at @s run setblock ~ ~ ~ bedrock
execute as @e[tag=pd_display_cursor, limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_display_corner", "corner_110"]}

# corner 0 +1 +1
tp @e[tag=pd_display_cursor, limit=1] @e[tag=pd_current, tag=pd_display, limit=1]
function pd_room_display:rooms/frame/save_cursor_position
scoreboard players operation %cursorY pd_display += %sizeY pd_display
scoreboard players add %cursorY pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[1] double 1.0 run scoreboard players get %cursorY pd_display
scoreboard players operation %cursorZ pd_display += %sizeZ pd_display
scoreboard players add %cursorZ pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[2] double 1.0 run scoreboard players get %cursorZ pd_display
execute as @e[tag=pd_display_cursor, limit=1] at @s run setblock ~ ~ ~ bedrock
execute as @e[tag=pd_display_cursor, limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_display_corner", "corner_011"]}




# corner +1 +1 +1
tp @e[tag=pd_display_cursor, limit=1] @e[tag=pd_current, tag=pd_display, limit=1]
function pd_room_display:rooms/frame/save_cursor_position
scoreboard players operation %cursorX pd_display += %sizeX pd_display
scoreboard players add %cursorX pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[0] double 1.0 run scoreboard players get %cursorX pd_display
scoreboard players operation %cursorY pd_display += %sizeY pd_display
scoreboard players add %cursorY pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[1] double 1.0 run scoreboard players get %cursorY pd_display
scoreboard players operation %cursorZ pd_display += %sizeZ pd_display
scoreboard players add %cursorZ pd_display 1
execute store result entity @e[tag=pd_display_cursor, limit=1] Pos[2] double 1.0 run scoreboard players get %cursorZ pd_display
execute as @e[tag=pd_display_cursor, limit=1] at @s run setblock ~ ~ ~ bedrock
execute as @e[tag=pd_display_cursor, limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_display_corner", "corner_111"]}


