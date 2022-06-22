# prepare filename
function pd_generation:rooms/spawn/determine_spawn_data

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
