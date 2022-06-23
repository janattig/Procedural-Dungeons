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
