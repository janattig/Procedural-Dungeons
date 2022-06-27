# Procedural Dungeons // pd_maps

Maps sub-repo of the Procedural Dungeons pack providing [map items](#maps) and a [map device](#map-device). In combination, these offer an approach to procedurally generated levels which is similar to the Action RPB [Path of Exile](https://www.pathofexile.com/). *Map items* encode the properties of a level which can then be accessed by putting the item in the *map device* structure and *opening* it. In fact, the map system was implemented first into the datapack as an attempt to enter Path of Exile's talent competition with a [video](https://www.youtube.com/watch?v=Q7MZA2epbMU) entry.

![](../../../images/maps_overview.png)


### Maps

Map items encode all properties of level generation which can be passed as parameters to the [`pd_generation`](../pd_generation) package. They often come with randomized parameters to provide more variety.

![](../../../images/map_items.png)

Most importantly, map items encode the linear extent of the level, as well as the tileset and algorithm.

Map items can be obtained by using functions. For each map item, there is a function which gives the player a single map with randomized parameters. The functions for already implemented maps are
```mcfunction
function pd_maps:maps/get_bunny_jump_ttt_map
function pd_maps:maps/get_canyon_ttt_map
function pd_maps:maps/get_caves_ttt_map
function pd_maps:maps/get_desert_ttt_map
function pd_maps:maps/get_sewers_ttt_map
function pd_maps:maps/get_skyblock_ttt_map
```




### Map device
