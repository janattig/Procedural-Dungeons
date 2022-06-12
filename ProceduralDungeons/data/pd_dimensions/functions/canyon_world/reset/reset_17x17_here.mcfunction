# only use the x and z coordinates of the function call origin
fill ~-8 60 ~-8 ~8 68 ~8 cobblestone
fill ~-8 69 ~-8 ~8 71 ~8 stone
fill ~-8 72 ~-8 ~8 73 ~8 terracotta
fill ~-8 74 ~-8 ~8 75 ~8 brown_terracotta
fill ~-8 76 ~-8 ~8 76 ~8 terracotta
fill ~-8 77 ~-8 ~8 77 ~8 white_terracotta
fill ~-8 78 ~-8 ~8 79 ~8 terracotta
fill ~-8 80 ~-8 ~8 80 ~8 red_terracotta
fill ~-8 81 ~-8 ~8 81 ~8 terracotta
fill ~-8 82 ~-8 ~8 82 ~8 yellow_terracotta
fill ~-8 83 ~-8 ~8 83 ~8 white_terracotta
fill ~-8 84 ~-8 ~8 85 ~8 terracotta
fill ~-8 86 ~-8 ~8 86 ~8 brown_terracotta
fill ~-8 87 ~-8 ~8 87 ~8 gray_terracotta
fill ~-8 88 ~-8 ~8 89 ~8 terracotta
fill ~-8 90 ~-8 ~8 90 ~8 red_sand
fill ~-8 91 ~-8 ~8 99 ~8 air


# remove all entities
execute positioned ~-8 0 ~-8 run execute as @e[type=!player, dx=17, dz=17, dy=100] at @s run tp @s ~ -1000 ~
execute positioned ~-8 0 ~-8 run execute as @e[type=!player, dx=17, dz=17, dy=-10000] at @s run kill @s
