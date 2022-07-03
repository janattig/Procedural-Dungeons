# output
tellraw @a [{"text":"  > building ", "color":"gray"}, {"text":"collapsed wavefunction", "color":"white"}, {"text":" layout", "color":"gray"}]
tellraw @a [{"text":"    > prioritize decisions: ", "color":"gray"},{"score":{"name":"%priority_percentage","objective":"pd_level_parameters"}, "color":"white"},{"text":"%", "color":"white"}]

# indicate that the wfc is not finished
scoreboard players set %wfc_finished pd_level_parameters 0

# run first phase
function pd_generation:alg_wave_collapse/phases/1_preparations
