# output
tellraw @a ["",{"text":"> "},{"text":"(3)","color":"blue"},{"text":": building room layout"}]

# build the general grid of rooms# output
tellraw @a [{"text":"  > building grid of rooms", "color":"gray"}]
function pd_generation:rooms/grid/place_grid

# designate starting room
kill @e[tag=pd_tmp_cursor]
execute in overworld run summon minecraft:marker 0 0 0 {Tags:["pd_tmp_cursor"]}
scoreboard players operation %target_tp_dimension pd_dimensions = %dimension pd_level_parameters
execute as @e[tag=pd_tmp_cursor] at @s run function pd_dimensions:tp_self_to_target_dimension
execute as @e[tag=pd_tmp_cursor] at @s run tp @s 0 0 0
execute as @e[tag=pd_tmp_cursor] at @s run tag @e[tag=pd_room,limit=1,sort=nearest] add pd_start
kill @e[tag=pd_tmp_cursor]

# schedule the algorithm dispatch
schedule function pd_generation:phases/misc/decide_algorithm 1t
