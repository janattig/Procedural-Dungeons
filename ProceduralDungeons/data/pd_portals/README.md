# Procedural Dungeons // pd_portals

Portal sub-repo of the Procedural Dungeons pack. Provides functions to summon custom portals that teleport nearby players to a fixed position in a custom dimension.

The following contents are added by this package:

1. **Summon a portal** at the current position by executing the function
    ```mcfunction
    function pd_portals:summon_portal
    ```

    The destination to which this portal teleports is taken from the scoreboard values in the scoreboard `pd_portal_coordinates` which can be set manually by
    ```mcfunction
    scoreboard players set %target_x pd_portal_coordinates 100
    scoreboard players set %target_y pd_portal_coordinates 1000
    scoreboard players set %target_z pd_portal_coordinates 250
    scoreboard players operation %target_dim pd_portal_coordinates = %cave_world pd_dimensions
    ```
    Note that the x,y and z coordinates are scaled by a factor of 100 when stored. Also, it is advised that the target dimension is not set directly but as a reference to the dimension values in the [`pd_dimensions`](../pd_dimensions) subpackage

    The portal destination can also be set to the position of the function call by calling the function
    ```mcfunction
    function pd_portals:set_portal_target_here
    ```

2. **Close portals** either a single portal can be closed with
    ```mcfunction
    function pd_portals:remove_portal
    ```
    or all portals can be closed with
    ```mcfunction
    function pd_portals:remove_all_portals
    ```

3. **Teleporting** of players who walk into a portal. Players are then teleported to the portal destination which was specified when the portal opened. Teleporting can be prevented by adding the tag `pd_portal_prevent_tp` to a player.
