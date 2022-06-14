# close all portals
execute as @e[tag=pd_portal] at @s run function pd_portals:remove_portal

# kill all remaining entities that are linked to portals
kill @e[tag=pd_portal]
kill @e[tag=pd_portal_decoration]
