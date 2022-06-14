# remove decoration
execute as @s at @s run function pd_portals:portal_internal/decoration/remove_deco

# play the close sound
function pd_portals:effects/sound_portal_close

# kill itself
kill @s
