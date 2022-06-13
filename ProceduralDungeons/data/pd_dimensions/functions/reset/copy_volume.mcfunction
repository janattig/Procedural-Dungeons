# function to copy a backup volume to the current position
# has to be executed in the correct dimension

# dispatch based on the scoreboard value of %current_reset_region_size pd_dimensions
execute if score %current_reset_region_size pd_dimensions matches 10..11 run clone 12300000 ~ 12300000 12300011 ~100 12300011 ~-5 ~ ~-5
execute if score %current_reset_region_size pd_dimensions matches 12..13 run clone 12300000 ~ 12300000 12300013 ~100 12300013 ~-6 ~ ~-6
execute if score %current_reset_region_size pd_dimensions matches 14..15 run clone 12300000 ~ 12300000 12300015 ~100 12300015 ~-7 ~ ~-7
execute if score %current_reset_region_size pd_dimensions matches 16..17 run clone 12300000 ~ 12300000 12300017 ~100 12300017 ~-8 ~ ~-8
execute if score %current_reset_region_size pd_dimensions matches 18..19 run clone 12300000 ~ 12300000 12300019 ~100 12300019 ~-9 ~ ~-9

# clear entities
execute positioned ~-9 0 ~-9 run execute as @e[type=!player, dx=19, dz=19, dy=100] at @s run tp @s ~ -1000 ~
execute positioned ~-9 0 ~-9 run execute as @e[type=!player, dx=19, dz=19, dy=-10000] at @s run kill @s

# if not within the list of currently supported region sizes
execute unless score %current_reset_region_size pd_dimensions matches 10..19 run say not possible
execute unless score %current_reset_region_size pd_dimensions matches 10..19 run tellraw @a ["",{"text":"> "},{"text":"PD DIM ERROR:","color":"red"},{"text":" unable to reset "},{"score":{"name":"%current_reset_region_size","objective":"pd_dimensions"},"color":"red"},{"text":"x"},{"score":{"name":"%current_reset_region_size","objective":"pd_dimensions"},"color":"red"},{"text":" region"}]
