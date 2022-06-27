# Procedural Dungeons

Procedural dungeon generation for Minecraft 1.18.2, mainly used to generate [Trouble in MC Town](https://github.com/janattig/Trouble-In-MC-Town) levels.

Originally designed for the Path of Exile talent competition featuring a [video](https://www.youtube.com/watch?v=Q7MZA2epbMU) entry.





### Datapack structure

The entirety of Procedural Dungeons is split up into several (mostly independent) packages, which all come with their own namespaces:

1. [`pd_dimensions`](ProceduralDungeons/data/pd_dimensions) contains all content regarding custom dimensions, i.e. determining in which dimension a function call is, teleporting to a dimension, as well as resetting terrain in a dimension after it has been modified.

2. [`pd_portals`](ProceduralDungeons/data/pd_portals) contains all content regarding custom portals between dimensions, i.e. opening and closing portals as well as the teleporting of players.

3. [`pd_generation`](ProceduralDungeons/data/pd_generation) contains all terrain generation related content

4. [`pd_maps`](ProceduralDungeons/data/pd_maps) contains map items and a custom map device (structure) which is able to open portals to freshly generated custom dungeons, parametrized by the map items.

5. [`pd_math`](ProceduralDungeons/data/pd_math) contains math related functions, including a linear congruent generator for custom (pseudo) random numbers.

6. [`procedural_dungeons`](ProceduralDungeons/data/procedural_dungeons) is the overarching namespace unifying every other subpackage and including structure data.



### Extending the datapack

In general, the Procedural Dungeons datapack is designed to be extended. Depending on the amount of new content that should be added, this is more or less extensive.

1. Building new rooms that should be used in a provided level

    If you want to provide new rooms for a level that is already being generated (e.g. from a map item), you have to do the following:
    - Build a room structure according to the details given [here](ProceduralDungeons/data/pd_generation#rooms-and-structure-data), especially respecting the different boundary types
    - Add the room structure `.nbt` file into the respective [structures folder](ProceduralDungeons/data/procedural_dungeons/structures).
    - Add the room structure into the code by extending the respective `init` function of the level as outlined [here](ProceduralDungeons/data/pd_generation#adding-new-rooms-to-an-existing-level)

2. *Remixing* a provided level / changing algorithm, grid size and other level parameters

    In case you do not want to build any new structures but use the provided ones in a different context (exclude certain rooms, use a different algorithm, ...), you have to do two steps:
    - Provide a *map item* to your level following the specifications of the [`pd_maps`](ProceduralDungeons/data/pd_maps) subpackage
    - Provide a suitable `load` function for your level, as partially outlined [here](ProceduralDungeons/data/pd_generation#adding-an-entire-new-level)
    - In case you want to add your rooms, just also follow the steps of the previous point.

3. Adding an entire new map type / new dimension

    You can even go as far as add an entire new dimension with relative ease. Here, you have to
    - follow the steps to add a new dimension, as outlined in the [`pd_dimensions`](ProceduralDungeons/data/pd_dimensions#adding-new-dimensions) package.
    - follow the previous steps, but make sure that you provided your custom dimension number (instead of the ones used for the already implemented dimensions.)
