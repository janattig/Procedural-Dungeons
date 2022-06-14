# summons a portal at the current position
# target of the portal is identified via scoreboard values

# maybe prevent the player (if he called it) from getting teleported
tag @a[distance=..1.0] add pd_portal_recent_tp
# remove all nearby (hindering) portals
execute as @e[tag=pd_portal, distance=..1.5] at @s run function pd_portals:remove_portal


# summon the portal entity
summon minecraft:marker ~ ~0.1 ~ {Tags:["pd_portal"]}
# let the entity run the setup function
execute as @e[tag=pd_portal, sort=nearest, limit=1] at @s run function pd_portals:portal_internal/setup_self

# play the sound effects
function pd_portals:effects/sound_portal_open
