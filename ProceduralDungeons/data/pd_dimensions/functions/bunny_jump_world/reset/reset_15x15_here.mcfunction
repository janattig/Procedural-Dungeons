# only use the x and z coordinates of the function call origin
fill ~-7 0 ~-7 ~7 0 ~7 bedrock
fill ~-7 1 ~-7 ~7 1 ~7 obsidian
fill ~-7 2 ~-7 ~7 5 ~7 cobblestone
fill ~-7 6 ~-7 ~7 6 ~7 slime_block
fill ~-7 7 ~-7 ~7 50 ~7 air


# remove all entities
execute positioned ~-7 0 ~-7 run execute as @e[type=!player, dx=15, dz=15, dy=100] at @s run tp @s ~ -1000 ~
execute positioned ~-7 0 ~-7 run execute as @e[type=!player, dx=15, dz=15, dy=-10000] at @s run kill @s
