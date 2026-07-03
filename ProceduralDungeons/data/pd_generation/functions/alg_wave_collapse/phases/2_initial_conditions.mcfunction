# output
tellraw @a [{"text":"    > ", "color":"gray"}, {"text":"(2)", "color":"white"}, {"text":": initial conditions", "color":"gray"}]

# call preparations of wavefunction
function pd_generation:alg_wave_collapse/prepare_wavefunction

# mark all rooms and borders for update
tag @e[tag=pd_room] add wfc_update_needed
tag @e[tag=pd_border] add wfc_update_needed

# schedule next phase
schedule function pd_generation:alg_wave_collapse/phases/3_initial_resolve 1t
