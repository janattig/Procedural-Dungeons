# remove the matching tag
tag @s remove matching

# check if there is a connectivity variation with the same border scoreboard values
execute if score @s pd_display_border_N = @e[tag=orientation_0, limit=1, sort=nearest] pd_display_border_N if score @s pd_display_border_E = @e[tag=orientation_0, limit=1, sort=nearest] pd_display_border_E if score @s pd_display_border_S = @e[tag=orientation_0, limit=1, sort=nearest] pd_display_border_S if score @s pd_display_border_W = @e[tag=orientation_0, limit=1, sort=nearest] pd_display_border_W run tag @s add matching
execute if score @s pd_display_border_N = @e[tag=orientation_90, limit=1, sort=nearest] pd_display_border_N if score @s pd_display_border_E = @e[tag=orientation_90, limit=1, sort=nearest] pd_display_border_E if score @s pd_display_border_S = @e[tag=orientation_90, limit=1, sort=nearest] pd_display_border_S if score @s pd_display_border_W = @e[tag=orientation_90, limit=1, sort=nearest] pd_display_border_W run tag @s add matching
execute if score @s pd_display_border_N = @e[tag=orientation_180, limit=1, sort=nearest] pd_display_border_N if score @s pd_display_border_E = @e[tag=orientation_180, limit=1, sort=nearest] pd_display_border_E if score @s pd_display_border_S = @e[tag=orientation_180, limit=1, sort=nearest] pd_display_border_S if score @s pd_display_border_W = @e[tag=orientation_180, limit=1, sort=nearest] pd_display_border_W run tag @s add matching
execute if score @s pd_display_border_N = @e[tag=orientation_270, limit=1, sort=nearest] pd_display_border_N if score @s pd_display_border_E = @e[tag=orientation_270, limit=1, sort=nearest] pd_display_border_E if score @s pd_display_border_S = @e[tag=orientation_270, limit=1, sort=nearest] pd_display_border_S if score @s pd_display_border_W = @e[tag=orientation_270, limit=1, sort=nearest] pd_display_border_W run tag @s add matching