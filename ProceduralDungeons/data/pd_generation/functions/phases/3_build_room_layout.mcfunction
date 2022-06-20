# output
tellraw @a ["",{"text":"> "},{"text":"(3)","color":"blue"},{"text":": building room layout"}]

# build the general grid of rooms# output
tellraw @a [{"text":"  > building grid of rooms", "color":"gray"}]
function pd_generation:rooms/grid/place_grid

# schedule the algorithm dispatch
schedule function pd_generation:phases/misc/decide_algorithm 1t
