# add all rooms

# 1 - N
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1000_coal_ending"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:2, file:"procedural_dungeons:15x15/mine/15x15_mine_2000_lava_lake"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:2, file:"procedural_dungeons:15x15/mine/15x15_mine_2000_startfield_ttt", start:1, ttt_only:1}

# 2i - NS
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1010_coal_cavern"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:2, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_2010_coal_mining"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:2, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_2010_startfield_ttt", start:1, ttt_only:1}

# 2l - WS
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_0011_coal_cavern"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:2, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_0012_minecart_spawn"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, south:2, file:"procedural_dungeons:15x15/mine/15x15_mine_0021_magma_forge"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_0011_startfield_ttt", start:1, ttt_only:1}

# 3 - NEW
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, north:1, east:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1101_intersection_coal"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, north:2, east:1, file:"procedural_dungeons:15x15/mine/15x15_mine_2101_coal_dig"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, north:2, east:1, file:"procedural_dungeons:15x15/mine/15x15_mine_2101_startfield_ttt", start:1, ttt_only:1}

# 4 - NSWE
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, east:1, north:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1111_intersection_coal"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, east:1, north:2, south:2, file:"procedural_dungeons:15x15/mine/15x15_mine_2121_barrel_storage"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, east:1, north:2, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_2111_startfield_ttt", start:1, ttt_only:1}
