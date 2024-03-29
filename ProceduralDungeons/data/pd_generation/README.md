# Procedural Dungeons // pd_generation

Sub-repo of the Procedural Dungeons pack providing the actual level generation content. Level generation in this datapack works general in two steps. First, a grid of *room markers* is placed and equipped with connectivity. Second, the markers are used to spawn individual Minecraft structures which resemble the actual pieces of the level.


### Level generation

Level generation is started from calling a single function
```mcfunction
function pd_generation:generate_level
```
and then runs through several phases, each designated for a specific task.


### Level parameters

Before a level can be generated, the level parameters have to be specified by setting certain scoreboard values of the `pd_generation` scoreboard. These include both the level specification (*which* level should be generated?) as well as actual level parameters like linear extent along the x and z coordinates. Note that when opening a map in the map device (provided in the [`pd_maps`](../pd_maps) subpackage), these settings are specified by the map and are set automatically.

The level specification is indicated by setting `%level_to_generate` to an integer value which specifies the tileset and dimension of the level.
```mcfunction
scoreboard player set %level_to_generate pd_generation 5
```

The level parameters include linear extents of the grid of rooms along the cardinal directions, thus setting the boundaries of the level generation
```mcfunction
scoreboard players set %min_grid_x pd_level_parameters -3
scoreboard players set %min_grid_z pd_level_parameters -2
scoreboard players set %max_grid_x pd_level_parameters 2
scoreboard players set %max_grid_z pd_level_parameters 3
```
as well as the starting height of the grid
```mcfunction
scoreboard players set %start_y pd_level_parameters 50
```
starting values for x and z coordinates are `0`.

Another (optional) parameter is the height of the room which is post processed (above the bottom layer). This can be set by e.g.
```mcfunction
scoreboard players set %post_processing_size_y pd_level_parameters 32
```
or left out which defaults to a value of `20`

Note, that these values have not to be given explicitly when using [maps](../pd_maps) from the [`pd_maps`](../pd_maps) subpackage, as these carry and set the parameters automatically.




### Generation phases

When triggering the level generation, it runs through the following generation phases:

1. **Load level specifications**

    In the first phase of level generation, the level data is loaded. This includes setting the data storage `procedural_dungeons:current_level` with a list of rooms, the dimension as well as the size of rooms. Then, the data from storage is also merged with the scoreboard parameters, necessary for level generation. Error messages are printed if some parameters are missing in this step.

2. **Clear old level (terrain)**

    In the second phase, old terrain in the chosen dimension is reset by calling the `pd_dimensions:reset_chosen_dimension` function. When all terrain is reset, the level generation can continue to the next phase.

3. **Build room layout**

    In the third phase, the actual level generation takes place by placing room markers and connecting them. This is either done by means of a *labyrinth constrution* or by a so-called *wavefunction-collapse* algorithm (not implemented yet). Phase 3 ends with a grid of room markers which carry the information of their respective connectivity on their borders.

4. **Spawn rooms**

    With the grid of rooms layed out, the fourth phase uses the connectivity to associate filenames with the room markers and spawn the actual room structures.

5. **Post process rooms**

    With terrain loaded, the fifth phase is refactoring the loaded structures. Here, common blocks like `stone` or `dirt` are partially replaced by similar looking blocks, to increase the visual diversity.

6. **Finishing the level**

    With the level generated entirely, the last phase is used to clean up all temporary markers etc. that remain from the level generation process.




### Rooms and structure data

*Rooms* in terms of this level generation framework are structures which resemble a box of terrain and are characterized by their four cardinal boundaries (north, south, east and west). Each room is contained in a structure file, with all files currently being stored in the `procedural_dungeons` [structures folder](../procedural_dungeons/structures).

When building structures, it is advised to load the provided bounding boxes (coming as extra structures in the respective folders, e.g. [`16x16x23_canyon_casing.nbt`](../procedural_dungeons/structures/16x16/canyon/16x16x23_canyon_casing.nbt) for the canyon world) and work from there on.

As an example, a room for the canyon world with 3 connections is shown in the figure below:

![](../../../images/structure_blocks.png)

If you build your own structures, you can save them e.g. in a similar manner in the [structures folder](../procedural_dungeons/structures).




### Adding new rooms to an existing level

When adding new room structures into the level generation code, one has first build an appropriate structure as shown above. Then, the structure can be added to the appropriate tileset by appending an entry to the `procedural_dungeons:level_data all_rooms` data storage in the global [`init`](functions/leveldata/init.mcfunction) function or the equivalent functions of the individual already impelemented levels (e.g. the [`tilesets/cave/init`](functions/leveldata/tilesets/cave/init.mcfunction) function for the cave level). This new entry **must** have the fields
- `file` specifies the structure file of the room. Typically has a namespace and a file location, e.g. `"procedural_dungeons:rooms/bunny_jump/block_test"`
- `size` specifies the dimension of the room in x and z directions. Must be specified as an integer
- `map` gives a string which can be used to identify the level that the room belongs to later on
- connectivity `north`, `north`, `north` and `north` for denoting the type of borders that the room has in all cardinal directions (as shown in the example above). Note, that the cardinal directions can be extracted from using the `F3` information view. If one of these is not specified, it will be set to `0`, denoting an *empty* border that connects to the empty unedited terrain of that level. Further, a setting of `1` is denoting a path, compatible with the labyrinth generation. Higher numbers indicate different border types in the wavefunction collapse algorithm. A general convention is that all negative values denote *impassable* connections, whereas positive values represent a border that characters can cross.

Further, optional arguments can be specified. These will be set to default values if left unspecified:
- `priority` (default value `-1`) used for when choosing equivalent between rooms. Rooms with higher priority are always chosen first

A minimal working example for the new line is therefore
```mcfunction
data modify storage procedural_dungeons:level_data all_rooms append value {map:"bunny_jump", size:14, north:1, file:"procedural_dungeons:rooms/bunny_jump/test_north"}
```
and a more extensive example could read
```mcfunction
data modify storage procedural_dungeons:level_data all_rooms append value {map:"bunny_jump", size:14, north:1, south:0, east:0, west:0, priority:-1, file:"procedural_dungeons:rooms/bunny_jump/test_north"}
```




### Adding an entire new level

To add a new level, i.e. an entire new set of rooms in maybe even a new dimension, you have to do the following:

0. (Optional) *Add new dimension*. If you are using a new dimension, make sure to follow the steps of adding the dimension, outlined in the [Adding new dimensions](../pd_dimensions#adding-new-dimensions) section of the `pd_dimensions` package.

1. Create a *tileset folder* for your level inside the [`tilesets/`](functions/leveldata/tilesets/) folder, containing two files:
    - `init.mcfunction` contains all initialization parts of your tileset, i.e. adding new rooms. Fill this file by adding in your rooms according to the [Adding new rooms](#adding-new-rooms-to-an-existing-level) section outlined above.
    - One ore several `load.mcfunction` files. These functions load the tileset when a level is generated as the first step in level generation. In a `load` file, the room set is chosen and further parameters are specified, which are the dimension number and the lower height at which the rooms are placed (starting height of the grid generation). It is probably best if you have a look at an existing `load` file (e.g. for the `cave` world, which can be found [here](functions/leveldata/tilesets/cave/load.mcfunction)).

2. Link to you `init` file from step 1. by adding a new line to the global [`init`](functions/leveldata/init.mcfunction) function, similar to how other levels are initialized. Your new line should read
    ```mcfunction
    function pd_generation:leveldata/tilesets/your_level_name/init
    ```

3. Link to your `load` file(S) from step 1. by adding a new line to the [`load_level_data`](functions/leveldata/load_level_data.mcfunction) function. Here, the scoreboard value `%level_to_generate pd_generation` is used to determine which individual `load` function is called. This means that here, you have to choose a unique identifier (integer) for your tileset. Your final line should be of the form
    ```mcfunction
    execute if score %level_to_generate pd_generation matches YOUR_LEVEL_ID run function pd_generation:leveldata/tilesets/your_level_name/load
    ```
