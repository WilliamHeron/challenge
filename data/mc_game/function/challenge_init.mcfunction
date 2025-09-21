
# /function mc_game:challenge_init

say Generating Challenge Initialization structures! :D 8===D


# ----------- Game Rules ------------------
say Setting mob griefing false
gamerule mobGriefing false


# Set players inside area to Adventure (cannot break blocks)
execute as @a[x=-5,z=-5,dx=10,dz=10] run gamemode adventure @s

# Restore players outside the area to Survival
execute as @a unless entity @s[x=-5,z=-5,dx=10,dz=10] run gamemode survival @s

# schedule function challenge_func:challenge_init 1s




function mc_game:protect_spawn/enable_spawn_protection