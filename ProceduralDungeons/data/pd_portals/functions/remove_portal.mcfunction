# remove either the caller (if portal) or the nearest portal at the call location
# by calling the self remove function
execute as @e[tag=pd_portal, limit=1, sort=nearest] at @s run function pd_portals:portal_internal/remove_self
