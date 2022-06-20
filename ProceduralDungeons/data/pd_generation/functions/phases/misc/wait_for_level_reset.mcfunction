# call this function until the current level has been reset
scoreboard players set %can_be_generated pd_generation 0
execute if score %is_reset_in_progress pd_dimensions matches 0 run scoreboard players set %can_be_generated pd_generation 1

# if generation can continue, schedule next phase, otherwise, schedule this function for next tick again
execute if score %can_be_generated pd_generation matches 0 run schedule function pd_generation:phases/misc/wait_for_level_reset 2t
execute if score %can_be_generated pd_generation matches 1 run schedule function pd_generation:phases/3_build_room_layout 1t

# debugging output
execute if score %can_be_generated pd_generation matches 1 run tellraw @a [{"text":"  > DONE", "color":"gray"}]
