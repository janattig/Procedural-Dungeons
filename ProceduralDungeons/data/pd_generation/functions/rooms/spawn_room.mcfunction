# mark the position for reset later on
execute store result score %reset_region_size pd_dimensions run data get entity @s data.size 1
execute positioned ~ ~ ~ run function pd_dimensions:register_region_for_reset_here

# prepare filename
function pd_generation:rooms/spawn/determine_spawn_data

# give an error if there is no data (i.e. no variation was found)
execute unless data entity @s data.file run tellraw @a ["",{"text":"> "},{"text":"PD SPAWN ERROR:","color":"red"},{"text":" unable to find room variation "}]
execute unless data entity @s data.file run tellraw @a ["",{"text":"  > "},{"text":"(N=","color":"red"},{"score":{"name":"@s","objective":"pd_room_border_n"}, "color":"white"},{"text":", S=","color":"red"},{"score":{"name":"@s","objective":"pd_room_border_s"}, "color":"white"},{"text":", E=","color":"red"},{"score":{"name":"@s","objective":"pd_room_border_e"}, "color":"white"},{"text":", W=","color":"red"},{"score":{"name":"@s","objective":"pd_room_border_w"}, "color":"white"},{"text":")","color":"red"}]
execute unless data entity @s data.file run execute unless score %currently_ttt pd_room_parameters matches 1 as @s[tag=pd_start] run tellraw @a ["",{"text":"  > "},{"text":"start room (plain)","color":"red"}]
execute unless data entity @s data.file run execute if score %currently_ttt pd_room_parameters matches 1 as @s[tag=pd_start] run tellraw @a ["",{"text":"  > "},{"text":"start room (TTT)","color":"red"}]
execute unless data entity @s data.file run execute as @s[tag=!pd_start] run tellraw @a ["",{"text":"  > "},{"text":"regular room","color":"red"}]

# setup the structure block used for spawning
setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD"} replace

# set the size and filename
data modify block ~ ~ ~ sizeX set from entity @s data.size
data modify block ~ ~ ~ sizeZ set from entity @s data.size
data modify block ~ ~ ~ posX set from entity @s data.posX
data modify block ~ ~ ~ posY set value 0
data modify block ~ ~ ~ posZ set from entity @s data.posZ
data modify block ~ ~ ~ rotation set from entity @s data.rotation
data modify block ~ ~ ~ name set from entity @s data.file
data modify block ~ ~ ~ ignoreEntities set value 0b

# add redstone block on top for spawning
setblock ~ ~1 ~ minecraft:redstone_block
