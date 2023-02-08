# output
tellraw @a [{"text":"    > ", "color":"gray"}, {"text":"(3)", "color":"white"}, {"text":": initial resolve", "color":"gray"}]

# temporarily boost the maximum number of commands which can be run per tick (up from 65536)
gamerule maxCommandChainLength 1000000

# call room resolve
function pd_generation:alg_wave_collapse/phases/misc/initial_resolve_rooms
