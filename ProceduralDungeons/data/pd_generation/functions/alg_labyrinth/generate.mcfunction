# output
tellraw @a [{"text":"  > building ", "color":"gray"}, {"text":"labyrinth", "color":"white"}, {"text":" layout", "color":"gray"}]

tellraw @a [{"text":"    > contains ", "color":"gray"}, {"score":{"name":"%max_num_rooms","objective":"pd_level_parameters"}, "color":"white"}, {"text":" rooms", "color":"gray"}]
tellraw @a [{"text":"    > loop chance ", "color":"gray"},{"score":{"name":"%lab_loop_percentage","objective":"pd_level_parameters"}, "color":"white"},{"text":"%", "color":"white"}]


# indicate that the lab is not finished
scoreboard players set %lab_finished pd_level_parameters 0

# init the random number generator
function pd_math:rand/seed

# first, prepare the grid
function pd_generation:alg_labyrinth/prepare_grid

# then, summon a cursor
function pd_generation:alg_labyrinth/cursor/summon_new_cursor

# let the cursor find out the labyrinth
execute as @e[tag=lab_cursor] at @s run function pd_generation:alg_labyrinth/cursor/execute_single_tick
