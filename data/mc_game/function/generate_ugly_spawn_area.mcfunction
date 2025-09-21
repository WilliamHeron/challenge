
# /function mc_game:challenge_init

say Generating Challenge Initialization structures! :D 8===D

# ----------- Spawn Area ------------------
say Generating spawn area.
#Main Spawn Pyramid
fill -9 81 -9 9 40 9 minecraft:bedrock
fill -10 80 -10 10 40 10 minecraft:bedrock
fill -11 79 -11 11 40 11 minecraft:bedrock
fill -12 78 -12 12 40 12 minecraft:bedrock
fill -13 77 -13 13 40 13 minecraft:bedrock
fill -14 76 -14 14 40 14 minecraft:bedrock

#Side Towers
fill -12 82 -12 -18 50 -18 minecraft:bedrock
fill 12 82 -12 18 50 -18 minecraft:bedrock
fill -12 82 12 -18 50 18 minecraft:bedrock
fill 12 82 12 18 50 18 minecraft:bedrock

fill 14 73 -14 16 72 -16 minecraft:iron_block
setblock 15 74 -15 minecraft:beacon

fill -14 73 14 -16 72 16 minecraft:iron_block
setblock -15 74 15 minecraft:beacon

fill 14 73 14 16 72 16 minecraft:iron_block
setblock 15 74 15 minecraft:beacon
setblock 15 75 15 minecraft:red_stained_glass

fill -14 73 -14 -16 72 -16 minecraft:iron_block
setblock -15 74 -15 minecraft:beacon
setblock -15 75 -15 minecraft:blue_stained_glass

# Beacon
fill -4 70 -4 4 65 4 minecraft:iron_block
fill -3 71 -3 3 65 3 minecraft:iron_block
fill -2 72 -2 2 65 2 minecraft:iron_block
fill -1 73 -1 1 65 1 minecraft:iron_block
setblock 0 74 0 minecraft:beacon

# Chests
setblock 4 81 4 minecraft:chest
setblock -4 81 -4 minecraft:chest

setblock 3 81 4 minecraft:red_concrete
setblock 4 81 5 minecraft:red_concrete
setblock 5 81 4 minecraft:red_concrete
setblock 4 81 3 minecraft:red_concrete

setblock -3 81 -4 minecraft:blue_concrete
setblock -4 81 -5 minecraft:blue_concrete
setblock -5 81 -4 minecraft:blue_concrete
setblock -4 81 -3 minecraft:blue_concrete



# ----------- Game Rules ------------------
say Setting mob griefing false
gamerule mobGriefing false


# Set players inside area to Adventure (cannot break blocks)
execute as @a[x=-5,z=-5,dx=10,dz=10] run gamemode adventure @s

# Restore players outside the area to Survival
execute as @a unless entity @s[x=-5,z=-5,dx=10,dz=10] run gamemode survival @s

# schedule function challenge_func:challenge_init 1s