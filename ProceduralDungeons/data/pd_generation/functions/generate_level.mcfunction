# output
tellraw @a ["",{"text":"Generating a new "},{"text":"Procedural Dungeon","color":"blue"},{"text":" level"}]


# level is not generated yet
scoreboard players set %level_fully_generated pd_generation 0

# trigger the first phase
schedule function pd_generation:phases/1_load_specifications 1t
