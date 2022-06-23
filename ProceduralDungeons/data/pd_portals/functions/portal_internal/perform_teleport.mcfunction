# called as an active portal to teleport the closest nearby player

# tag the closest player
tag @a remove pd_portal_tp_player
tag @p[tag=!pd_portal_recent_tp,tag=!pd_portal_prevent_tp, distance=..1] add pd_portal_tp_player



# kill all remaining target marker
kill @e[tag=pd_portal_tp_target]

# summon a new target marker at the origin
execute in overworld run summon minecraft:marker 0 1 0 {Tags:["pd_portal_tp_target"]}

# teleport the marker to the target dimension
execute store result score %target_tp_dimension pd_dimensions run data get entity @s data.destination_dim
execute as @e[tag=pd_portal_tp_target] run function pd_dimensions:tp_self_to_target_dimension

# set the correct target coordinates
data modify entity @e[tag=pd_portal_tp_target, limit=1] Pos set from entity @s data.destination

# set the correct rotation from the player that is teleported (so that tp feels good)
data modify entity @e[tag=pd_portal_tp_target, limit=1] Rotation set from entity @a[tag=pd_portal_tp_player,limit=1] Rotation


# let the marker teleport the player to itself
tp @a[tag=pd_portal_tp_player, limit=1] @e[tag=pd_portal_tp_target, limit=1]
# raise the player a bit
execute as @a[tag=pd_portal_tp_player, limit=1] at @s run tp @s ~ ~0.6 ~


# kill the target marker
kill @e[tag=pd_portal_tp_target]



# give the nearest player the effect of teleportation
execute as @a[tag=pd_portal_tp_player,limit=1] at @s run function pd_portals:effects/player_just_teleported

# handle tags of the player
tag @a[tag=pd_portal_tp_player] add pd_portal_recent_tp
tag @a remove pd_portal_tp_player

# remove the tags from the portal itself
tag @s remove pd_portal_active
tag @s remove pd_portal_can_teleport
