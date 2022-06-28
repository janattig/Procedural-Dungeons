# stone bricks -> cracked stone bricks
execute if predicate pd_generation:replacement/stone_bricks_to_cracked run setblock ~ ~ ~ cracked_stone_bricks

# stone bricks -> mossy stone bricks
execute if predicate pd_generation:replacement/stone_bricks_to_mossy run setblock ~ ~ ~ mossy_stone_bricks
