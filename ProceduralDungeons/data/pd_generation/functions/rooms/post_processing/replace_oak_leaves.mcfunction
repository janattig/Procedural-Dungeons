# oak leaves -> dark oak leaves
execute if predicate pd_generation:replacement/oak_leaves_to_dark_oak_leaves run setblock ~ ~ ~ dark_oak_leaves

# oak leaves -> air
execute if predicate pd_generation:replacement/oak_leaves_to_air run setblock ~ ~ ~ air

# oak leaves -> jungle leaves
execute if predicate pd_generation:replacement/oak_leaves_to_jungle_leaves run setblock ~ ~ ~ jungle_leaves
