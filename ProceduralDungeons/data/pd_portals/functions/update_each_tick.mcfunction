# the function that is called every tick to update portals, teleport players and update decoration

# update all recently teleported players and check if they are outside of deactivation range of ALL portals
execute as @a[tag=pd_portal_recent_tp] at @s run execute unless entity @e[tag=pd_portal, distance=..1.5] run tag @s remove pd_portal_recent_tp

# let the portals update themselves
execute as @e[tag=pd_portal] at @s run function pd_portals:portal_internal/update_self

# let the decorations update themselves
execute as @e[tag=pd_portal_decoration] at @s run function pd_portals:portal_internal/decoration/update_self


# make a single teleport per tick
