# maybe replace the dirt
execute if block ~ ~ ~ dirt if predicate pd_generation:replace_dirt run function pd_generation:rooms/post_processing/replace_dirt

# maybe replace the stone
execute if block ~ ~ ~ stone if predicate pd_generation:replace_stone run function pd_generation:rooms/post_processing/replace_stone

# maybe replace the stone bricks
execute if block ~ ~ ~ stone_bricks if predicate pd_generation:replace_stone_bricks run function pd_generation:rooms/post_processing/replace_stone_bricks

# maybe replace the oak leaves
execute if block ~ ~ ~ oak_leaves if predicate pd_generation:replace_oak_leaves run function pd_generation:rooms/post_processing/replace_oak_leaves
