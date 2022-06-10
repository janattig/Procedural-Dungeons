# only use the x and z coordinates of the function call origin
fill ~-5 20 ~-5 ~5 68 ~5 dirt
fill ~-5 69 ~-5 ~5 80 ~5 air

# remove all entities
execute positioned ~-5 0 ~-5 run execute as @e[type=!player, dx=11, dz=11, dy=100] at @s run tp @s ~ -1000 ~
execute positioned ~-5 0 ~-5 run execute as @e[type=!player, dx=11, dz=11, dy=-10000] at @s run kill @s
