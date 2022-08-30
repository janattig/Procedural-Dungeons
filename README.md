# Procedural Dungeons

Procedural dungeon generation for Minecraft 1.18.2 - 1.19.2, mainly used to generate [Trouble in MC Town](https://github.com/janattig/Trouble-In-MC-Town) levels. Originally, this pack was designed for the Path of Exile talent competition featuring a [video](https://www.youtube.com/watch?v=Q7MZA2epbMU) entry.

For diving right in, check out the [installation](#installation) and the [How to play](#How-to-play--use) sections. If you are looking to extend the pack with your own structures / levels / etc., check out the [Extending the datapack](#extending-the-datapack) section. If you are looking to find detailed description on certain aspects, have a look at the [Datapack structure](#datapack-structure).






### Installation

To install the datapack, download and copy the `ProceduralDungeons` folder into the `datapack` folder of your savegame. Then load your savegame and check if the datapack is already enabled by using the command
```mcfunction
datapack list
```
if the datapack is not yet enabled, you can manually enable it with
```mcfunction
datapack enable "file/ProceduralDungeons"
```
Once the datapack is enabled in your save, make sure to quit and re-enter the game so that the additional dimensions are generated accordingly. Note that you will need to acknowledge that Minecraft uses experimental features and you are fine to accept that "there will be dragons" upon entering the savegame in Singleplayer.





### How to play / use

It should be noted that Procedural Dungeons itself only adds level generation features. For now, all levels provide start structures for my [Trouble in MC Town](https://github.com/janattig/Trouble-In-MC-Town) datapack, which has to be installed seperately in order to be played.

To generate levels with Procedural Dungeons, you have to do the following:
  1. Build a [map device](ProceduralDungeons/data/pd_maps#map-device). To do so, get the structure block with
      ```mcfunction
      loot give @s loot pd_maps:map_device
      ```
      and place it somewhere in your world. Then, you can load the contained structure.
  2. Obtain a [map item](ProceduralDungeons/data/pd_maps#maps). You can get a *random* map via
      ```mcfunction
      function procedural_dungeons:get_random_ttt_map
      ```
  3. Put the map item into the item frame of the map device and hit the button on the sides

The map should now be generated. Enter the map area through one of the portals which now are opened. On the other side, there is a portal that brings you back to the map device.

If you aim to play [Trouble in MC Town](https://github.com/janattig/Trouble-In-MC-Town), the map device will teleport you close to the starting location of the game, where you will find an adapted version of the TTT start structure.

So have fun and enjoy the maps!




### Extending the datapack

In general, the Procedural Dungeons datapack is designed to be extended. Depending on the amount of new content that you want to add, more or less has to be changed.

1. Building new rooms that should be used in an already implemented level

    If you want to provide new rooms for a level that is already being generated (e.g. from a map item), you have to do the following:
    - Build a room structure according to the details given [here](ProceduralDungeons/data/pd_generation#rooms-and-structure-data), especially respecting the different boundary types
    - Add the room structure `.nbt` file into the respective [structures folder](ProceduralDungeons/data/procedural_dungeons/structures).
    - Add the room structure into the code by extending the respective `init` function of the level as outlined [here](ProceduralDungeons/data/pd_generation#adding-new-rooms-to-an-existing-level)

2. *Remixing* a provided level / changing algorithm, grid size and other level parameters

    In case you do not want to build any new structures but use the provided ones in a different context (exclude certain rooms, use a different algorithm, ...), you have to do two steps:
    - Provide a *map item* to your level following the specifications of the [`pd_maps`](ProceduralDungeons/data/pd_maps#adding-custom-maps) subpackage
    - Provide a suitable `load` function for your level, as partially outlined [here](ProceduralDungeons/data/pd_generation#adding-an-entire-new-level)
    - In case you want to add your rooms, just also follow the steps of the previous point.

3. Adding an entire new map type / new dimension

    You can even go as far as add an entire new dimension with relative ease. Here, you have to
    - follow the steps to add a new dimension, as outlined in the [`pd_dimensions`](ProceduralDungeons/data/pd_dimensions#adding-new-dimensions) package.
    - follow the previous steps, but make sure that you provided your custom dimension number (instead of the ones used for the already implemented dimensions.)





### Datapack structure

The entirety of Procedural Dungeons is split up into several (mostly independent) packages, which all come with their own namespaces:

1. [`pd_dimensions`](ProceduralDungeons/data/pd_dimensions) contains all content regarding custom dimensions, i.e. determining in which dimension a function call is, teleporting to a dimension, as well as resetting terrain in a dimension after it has been modified.

2. [`pd_portals`](ProceduralDungeons/data/pd_portals) contains all content regarding custom portals between dimensions, i.e. opening and closing portals as well as the teleporting of players.

3. [`pd_generation`](ProceduralDungeons/data/pd_generation) contains all terrain generation related content

4. [`pd_maps`](ProceduralDungeons/data/pd_maps) contains map items and a custom map device (structure) which is able to open portals to freshly generated custom dungeons, parametrized by the map items.

5. [`pd_math`](ProceduralDungeons/data/pd_math) contains math related functions, including a linear congruent generator for custom (pseudo) random numbers.

6. [`procedural_dungeons`](ProceduralDungeons/data/procedural_dungeons) is the overarching namespace unifying every other subpackage and including structure data.
