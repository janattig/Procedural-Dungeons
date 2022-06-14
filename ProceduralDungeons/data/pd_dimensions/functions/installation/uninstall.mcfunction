# remove forceloading of all 0 0 chunks in all worlds
execute in pd_dimensions:bunny_jump_world run forceload remove
execute in pd_dimensions:canyon_world run forceload remove
execute in pd_dimensions:cave_world run forceload remove
execute in pd_dimensions:desert_world run forceload remove
execute in pd_dimensions:sewer_world run forceload remove
execute in pd_dimensions:skyblock_world run forceload remove

# remove scoreboard
scoreboard objectives remove pd_dimensions
