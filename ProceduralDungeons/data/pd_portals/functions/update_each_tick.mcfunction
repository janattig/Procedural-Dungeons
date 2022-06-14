# the function that is called every tick to update portals, teleport players and update decoration

# update decoration
execute as @e[tag=pd_portal_decoration] at @s run function pd_portals:portal_internal/decoration/update_self
