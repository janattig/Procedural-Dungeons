# Procedural Dungeons // pd_generation

Sub-repo of the Procedural Dungeons pack providing the actual terrain generation content. Terrain generation in this datapack works general in two steps. First, a grid of *room markers* is placed and equipped with connectivity. Second, the markers are used to spawn individual Minecraft structures which resemble the actual pieces of the level.


### Generation phases

Level generation runs in the following phases, all designated for a specific task.

0. **What has to be done before**

    ...

1. **Load level specifications**

    ...

2. **Clear old level (terrain)**

    ...

3. **Build room layout**

    ...

4. **Prepare room spawns**

    ...

5. **Spawn rooms**

    ...

6. **Post process rooms**

    ...



### Room data

When adding new rooms, one has to append an entry to the `procedural_dungeons:level_data all_rooms` data storage in the global [`init`](functions\leveldata\init.mcfunction) function or the equivalent functions of the individual already impelemented levels. This new entry **must** have the fields
- `file` specifies the structure file of the room. Typically has a namespace and a file location, e.g. `"procedural_dungeons:rooms/bunny_jump/block_test"`
- `size` specifies the dimension of the room in x and z directions. Must be specified as an integer
- `map` gives a string which can be used to identify the level that the room belongs to later on
- connectivity `north`, `north`, `north` and `north` for denoting the type of borders that the room has in all cardinal directions. If one of these is not specified, it will be set to `0`, denoting an *empty* border that connects to the empty unedited terrain of that level. Further, a setting of `1` is denoting a path, compatible with the labyrinth generation. Higher numbers indicate different border types in the wavefunction collapse algorithm.

Further, optional arguments can be specified. These will be set to default values if left unspecified:
- `priority` (default value `-1`) used for when choosing equivalent between rooms. Rooms with higher priority are always chosen first

A minimal working example would therefore be
```mcfunction
data modify storage procedural_dungeons:level_data all_rooms append value {map:"bunny_jump", size:14, north:1, file:"procedural_dungeons:rooms/bunny_jump/test_north"}
```
and a more extensive example could read
```mcfunction
data modify storage procedural_dungeons:level_data all_rooms append value {map:"bunny_jump", size:14, north:1, south:0, east:0, west:0, priority:-1, file:"procedural_dungeons:rooms/bunny_jump/test_north"}
```
