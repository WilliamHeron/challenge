# This function sets all players in spawn area to adventure mode and all players outside spawn area to survival mode.
# This is the main function for the spawn protection feature

# Initialize ticker
scoreboard players add #timer tick 1

execute if score #timer tick matches 5 run function mc_game:protect_spawn/check_spawn_area

execute if score #timer tick matches 10 run function mc_game:protect_spawn/set_adventure_mode

execute if score #timer tick matches 15 run function mc_game:protect_spawn/set_survival_mode


# Reset ticker
execute if score #timer tick matches 20 run scoreboard players set #timer tick 0