# add all rooms

# 1 - N
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:1, file:"procedural_dungeons:demo_test/demo_test_1_1"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:1, file:"procedural_dungeons:demo_test/demo_test_1_2"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:1, file:"procedural_dungeons:demo_test/demo_test_1_start", start:1, ttt_only:1}

# 2i - NS
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:1, south:1, file:"procedural_dungeons:demo_test/demo_test_2i"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:1, south:1, file:"procedural_dungeons:demo_test/demo_test_2i_start", start:1, ttt_only:1}

# 2l - WS
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:1, south:1, file:"procedural_dungeons:demo_test/demo_test_2l"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:1, south:1, file:"procedural_dungeons:demo_test/demo_test_2l_start", start:1, ttt_only:1}

# 3 - NEW
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:1, north:1, east:1, file:"procedural_dungeons:demo_test/demo_test_3"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:1, north:1, east:1, file:"procedural_dungeons:demo_test/demo_test_3_start", start:1, ttt_only:1}

# 4 - NSWE
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:1, east:1, north:1, south:1, file:"procedural_dungeons:demo_test/demo_test_4"}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:1, east:1, north:1, south:1, file:"procedural_dungeons:demo_test/demo_test_4_start", start:1, ttt_only:1}





# MISC
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:2, east:2, north:1, file:"procedural_dungeons:demo_test/demo_test_wfc_1", priority:1}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:2, file:"procedural_dungeons:demo_test/demo_test_wfc_2", priority:1}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, file:"procedural_dungeons:demo_test/demo_test_wfc_3", priority:-3}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:2, south:3, file:"procedural_dungeons:demo_test/demo_test_wfc_gold_1", priority:1}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:3, south:3, file:"procedural_dungeons:demo_test/demo_test_wfc_gold_2", priority:1}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, west:1, east:1, north:3, file:"procedural_dungeons:demo_test/demo_test_wfc_gold_3", priority:1}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:1, south:3, file:"procedural_dungeons:demo_test/demo_test_wfc_gold_4", priority:1}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:3, file:"procedural_dungeons:demo_test/demo_test_wfc_gold_5", priority:1}
data modify storage procedural_dungeons:level_data all_rooms append value {map:"demo_test", size:5, north:1, south:2, east:3, west:3, file:"procedural_dungeons:demo_test/demo_test_wfc_start", priority:1, start:1, ttt_only:1}
