# setup the structure block used for spawning
setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD"} replace

# set the size and filename
data modify block ~ ~ ~ sizeX set from entity @s data.size
data modify block ~ ~ ~ sizeZ set from entity @s data.size
data modify block ~ ~ ~ posX set value 1
data modify block ~ ~ ~ posY set value 1
data modify block ~ ~ ~ posZ set value 1
data modify block ~ ~ ~ showboundingbox set value 1
data modify block ~ ~ ~ name set from entity @s data.file
data modify block ~ ~ ~ ignoreEntities set value 0b

# add redstone block on top for spawning
setblock ~ ~1 ~ minecraft:redstone_block
