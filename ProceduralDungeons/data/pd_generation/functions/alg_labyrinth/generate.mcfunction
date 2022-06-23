# output
tellraw @a [{"text":"  > building ", "color":"gray"}, {"text":"labyrinth", "color":"white"}, {"text":" layout", "color":"gray"}]
tellraw @a [{"text":"  > loop chance ", "color":"gray"},{"score":{"name":"%lab_loop_percentage","objective":"pd_level_parameters"}, "color":"white"},{"text":"%", "color":"white"}]

# indicate that the lab is not finished
scoreboard players set %lab_finished pd_level_parameters 0

# init the random number generator
function pd_math:rand/seed

# first, prepare the grid
function pd_generation:alg_labyrinth/prepare_grid

# then, summon a cursor
function pd_generation:alg_labyrinth/cursor/summon_new_cursor

# let the cursor find out the labyrinth
execute as @e[tag=lab_cursor] at @s run function pd_generation:alg_labyrinth/cursor/make_moves

# delete the cursor
kill @e[tag=lab_cursor]



# first, finalize the grid
function pd_generation:alg_labyrinth/finalize_grid

# output
tellraw @a [{"text":"  > completed layout", "color":"gray"}]

# indicate that the lab is finished
scoreboard players set %lab_finished pd_level_parameters 1
