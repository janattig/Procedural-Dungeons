# find a random direction
execute as @s at @s run function pd_generation:alg_labyrinth/cursor/find_random_direction

# check this direction
execute as @s[tag=lab_checking_north] at @s run function pd_generation:alg_labyrinth/cursor/check_north
execute as @s[tag=lab_checking_south] at @s run function pd_generation:alg_labyrinth/cursor/check_south
execute as @s[tag=lab_checking_east] at @s run function pd_generation:alg_labyrinth/cursor/check_east
execute as @s[tag=lab_checking_west] at @s run function pd_generation:alg_labyrinth/cursor/check_west

# remove the own tag
tag @s remove lab_checking_north
tag @s remove lab_checking_south
tag @s remove lab_checking_east
tag @s remove lab_checking_west
