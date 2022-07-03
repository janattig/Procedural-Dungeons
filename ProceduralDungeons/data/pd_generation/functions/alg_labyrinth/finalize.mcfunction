# delete the cursor
kill @e[tag=lab_cursor]



# first, finalize the grid
function pd_generation:alg_labyrinth/finalize_grid

# output
tellraw @a [{"text":"    > completed layout", "color":"gray"}]

# indicate that the lab is finished
scoreboard players set %lab_finished pd_level_parameters 1
