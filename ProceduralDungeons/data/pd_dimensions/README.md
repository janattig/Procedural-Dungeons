# Procedural Dungeons // pd_dimensions

Dimension sub-repo of the Procedural Dungeons pack. Provides the different dimensions in which areas are created. In total, the following parts are provided:

1. **Dimension definition** by actual custom dimensions. Specifications are included in the [dimensions](dimensions/) folder. The already implemented dimensions are
    - `bunny_jump_world` made from cobblestone and slime blocks with slimes spawning
    - `canyon_world` layered dimension with terracotta and red sand on top
    - `cave_world` huge pile of dirt with sky above
    - `desert_world` sand and sandstone below a burning sun
    - `sewer_world` similar to cave but at night time
    - `skyblock_world` complete void up in the sky (no blocks at all)

    With this definition, you can already enter the custom dimensions by using
    ```mcfunction
    execute in pd_dimensions:cave_world run tp @s 0 100 0
    ```

2. **Dimension checks (predicates)**. Any dimension has an according predicate (like `pd_dimensions:is_in_cave_world` for `cave_world`) which can be used to test if the function call is inside the dimension. Predicates are specified in [this](predicates/) folder.

    With such predicates, you can execute code only if the call happens in a certain dimension:
    ```mcfunction
    execute if predicate pd_dimensions:is_in_cave_world run ...
    ```

3. **Dimension checks (scoreboard)**. Since every dimension comes with its own scoreboard numbering (e.g. `%cave_world` in `pd_dimensions` for the dimension `cave_world`), there is a function `pd_dimensions:set_current_dimension_scoreboard` (found [here](functions/set_current_dimension_scoreboard.mcfunction)) to save the current dimension number of the function call to the scoreboard player `%current_dimension` in `pd_dimensions`.

    With these dimension checks, you can determine the current dimension by first calling
    ```mcfunction
    function pd_dimensions:set_current_dimension_scoreboard
    ```
    and then using the value from the scoreboard for further things
    ```mcfunction
    scoreboard players get %current_dimension pd_dimensions
    ```

4. **Teleport entity to dimension (based on scoreboard)**. The function `pd_dimensions:tp_self_to_target_dimension` (found [here](functions/tp_self_to_target_dimension.mcfunction)) teleports the function caller (entity) to the dimension which is specified by its number in `%target_tp_dimension` in `pd_dimensions`.

    In practice, you first set the target dimension by one of the following lines
    ```mcfunction
    scoreboard players set %target_tp_dimension pd_dimensions 4
    scoreboard players operation %target_tp_dimension pd_dimensions = %cave_world pd_dimensions
    ```
    and then use the function to teleport yourself (or another entity) to this dimension
    ```mcfunction
    function pd_dimensions:tp_self_to_target_dimension
    execute as @e[...] at @s run function pd_dimensions:tp_self_to_target_dimension
    ```
    Of course, this comes in handy once it is used for other entities and the dimension scoreboard is set automatically somewhere in your scripts.

5. **Dimension resets** to reset the landscape / terrain in a dimension back to what it was before editing. Resets have to be undertaken in the following steps:

    1. Specify the x/z size of the target area by setting the scoreboard value `%reset_region_size` in `pd_dimensions`. The y size is maxed out to reach the 32000 block maximum volume to change during one tick. Example:
        ```mcfunction
        scoreboard players set %reset_region_size pd_dimensions 11
        ```
    2. Register the regions which have to be reset with the function `pd_dimensions:register_region_for_reset` (found [here](functions/register_region_for_reset.mcfunction)). The caller position marks the center of the cube's bottom which is reset, i.e. with a x/z size of 11, everything from `~-5 ~ ~-5` to `~5 ~100 ~5` is being reset. Example:
        ```mcfunction
        function pd_dimensions:register_region_for_reset
        ```
    3. reset either the dimension in which you are (or the function call takes place) with the function `pd_dimensions:reset_this_dimension` (found [here](functions/reset_this_dimension.mcfunction)) or choose a dimension with a suitable scoreboard number at `%reset_dimension` in `pd_dimensions` and reset it with the function `pd_dimensions:reset_chosen_dimension` (found [here](functions/reset_chosen_dimension.mcfunction)). Example:
        ```mcfunction
        function pd_dimensions:reset_this_dimension
        ```
        or
        ```mcfunction
        scoreboard players operation %reset_dimension pd_dimensions = %cave_world pd_dimensions
        function pd_dimensions:reset_chosen_dimension
        ```



### Adding new dimensions

In case you want to extend this package and add your own dimension, you have to modify the following:

1. Provide a new *dimension file* in the [dimension](dimension/) folder, following the [specifications](https://minecraft.fandom.com/wiki/Custom_dimension) for custom dimensions in Minecraft. Naming convention currently is `your_name_world`.

2. Provide a new *predicate* in the [predicates](predicates/) folder which checks if a function call is inside your custom dimension. Naming convention currently is `is_in_your_name_world`.

3. *Initialize* your dimension with a code block in the [`pd_dimensions:installation/install`](functions/installation/install.mcfunction) function similar to other dimensions. In total, you have to provide a custom number for your dimension and call the forceloading setup in it.

4. Extend *dimension checks via scoreboards* by adding a new line to the function [`pd_dimensions:set_current_dimension_scoreboard`](functions/set_current_dimension_scoreboard.mcfunction).

5. Extend *teleporting to custom dimensions via scoreboards* by adding a new line to the function [`pd_dimensions:tp_self_to_target_dimension`](functions/tp_self_to_target_dimension.mcfunction).


This is it! The entirety of the *region reset* logic is already generalized to all dimensions and does not need adjustment if you add a new dimension. This is achieved by relying on the functions `pd_dimensions:set_current_dimension_scoreboard` and `pd_dimensions:tp_self_to_target_dimension` to determine and locate to all dimensions.
