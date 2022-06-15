# Procedural Dungeons // pd_generation

Sub-repo of the Procedural Dungeons pack providing the actual terrain generation content.





### Room data

When adding new rooms, one has to append an entry to the `procedural_dungeons:level_data all_rooms` data storage. This new entry **must** have the fields
- `file` specifies the structure file of the room. Typically has a namespace and a file location, e.g. `"procedural_dungeons:rooms/bunny_jump/block_test"`
- `size` specifies the dimension of the room in x and z directions. Must be specified as an integer
- `map` gives a string which can be used to identify the level that the room belongs to later on
- connectivity `north`, `north`, `north` and `north` for denoting the type of borders that the room has in all cardinal directions. If one of these is not specified, it will be set to `0`, denoting an *empty* border that connects to the empty unedited terrain of that level. Further, a setting of `1` is denoting a path, compatible with the labyrinth generation. Higher numbers indicate different border types in the wavefunction collapse algorithm.

Further, optional arguments can be specified. These will be set to default values if left unspecified:
- `priority` (default value `-1`) used for when choosing equivalent between rooms. Rooms with higher priority are always chosen first
 
