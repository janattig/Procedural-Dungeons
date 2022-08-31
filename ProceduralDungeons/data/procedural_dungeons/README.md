# Procedural Dungeons // procedural_dungeons

Sub-repo of the Procedural Dungeons pack providing a unifying namespace for functions with easy access. For a comprehensive summary of the Procedural Dungeons datapack, see the [main page](https://github.com/janattig/Procedural-Dungeons).

The following functions are provided:

1. **Obtaining a random (TTT) map**

    These maps are used to play [Trouble in MC Town](https://github.com/janattig/Trouble-In-MC-Town) and provided approriate start structures upon creation. A random map (among those implemented in the [pd_maps](../pd_maps/) subpackage of Procedural Dungeons) can be obtained by calling
    ```mcfunction
    function procedural_dungeons:get_random_ttt_map
    ```

2. **Obtaining a map device**

    To generate any level, a map item has to be placed inside a [map device](../pd_maps#map-device). A simple map device can be obtained by calling
    ```mcfunction
    function procedural_dungeons:get_map_device
    ```
    and an extended version (also containing dispensers for different maps) is accessible by
    ```mcfunction
    function procedural_dungeons:get_map_device_extended
    ```
