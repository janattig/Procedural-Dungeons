# add all rooms

# 1 - N
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, north:1, file:"procedural_dungeons:demo_test_1"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, north:1, file:"procedural_dungeons:demo_test_1_start", start:1, ttt_only:1}

# 2i - NS
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, north:1, south:1, file:"procedural_dungeons:demo_test_2i"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, north:1, south:1, file:"procedural_dungeons:demo_test_2i_start", start:1, ttt_only:1}

# 2l - WS
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, west:1, south:1, file:"procedural_dungeons:demo_test_2l"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, west:1, south:1, file:"procedural_dungeons:demo_test_2l_start", start:1, ttt_only:1}

# 3 - NEW
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, west:1, north:1, east:1, file:"procedural_dungeons:demo_test_3"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, west:1, north:1, east:1, file:"procedural_dungeons:demo_test_3_start", start:1, ttt_only:1}

# 4 - NSWE
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, west:1, east:1, north:1, south:1, file:"procedural_dungeons:demo_test_4"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:7, west:1, east:1, north:1, south:1, file:"procedural_dungeons:demo_test_4_start", start:1, ttt_only:1}
