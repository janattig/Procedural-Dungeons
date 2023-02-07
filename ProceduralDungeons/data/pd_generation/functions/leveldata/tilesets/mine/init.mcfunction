# add all rooms

# 1 - N
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1000_coal_ending"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1000_coal_ending", start:1, ttt_only:1}

# 2i - NS
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1010_coal_cavern"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, north:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1010_coal_cavern", start:1, ttt_only:1}

# 2l - WS
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_0011_coal_cavern"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_0011_coal_cavern", start:1, ttt_only:1}

# 3 - NEW
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, north:1, east:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1101_intersection_coal"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, north:1, east:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1101_intersection_coal", start:1, ttt_only:1}

# 4 - NSWE
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, east:1, north:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1111_intersection_coal"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"mine", size:15, west:1, east:1, north:1, south:1, file:"procedural_dungeons:15x15/mine/15x15_mine_1111_intersection_coal", start:1, ttt_only:1}
