
# /function challenge_func:challenge_init

say Generating Challenge Initialization structures! :D 8===D

# ----------- Spawn Area ------------------
say Generating spawn area.
#Main Spawn Pyramid
fill -9 151 -9 9 90 9 minecraft:bedrock
fill -10 150 -10 10 90 10 minecraft:bedrock
fill -11 149 -11 11 90 11 minecraft:bedrock
fill -12 148 -12 12 90 12 minecraft:bedrock
fill -13 147 -13 13 90 13 minecraft:bedrock
fill -14 146 -14 14 90 14 minecraft:bedrock

#Side Towers
fill -12 152 -12 -18 100 -18 minecraft:bedrock
fill 12 152 -12 18 100 -18 minecraft:bedrock
fill -12 152 12 -18 100 18 minecraft:bedrock
fill 12 152 12 18 100 18 minecraft:bedrock

fill 14 143 -14 16 142 -16 minecraft:iron_block
setblock 15 144 -15 minecraft:beacon

fill -14 143 14 -16 142 16 minecraft:iron_block
setblock -15 144 15 minecraft:beacon

fill 14 143 14 16 142 16 minecraft:iron_block
setblock 15 144 15 minecraft:beacon
setblock 15 145 15 minecraft:red_stained_glass

fill -14 143 -14 -16 142 -16 minecraft:iron_block
setblock -15 144 -15 minecraft:beacon
setblock -15 145 -15 minecraft:blue_stained_glass

# Beacon
fill -4 140 -4 4 135 4 minecraft:iron_block
fill -3 141 -3 3 135 3 minecraft:iron_block
fill -2 142 -2 2 135 2 minecraft:iron_block
fill -1 143 -1 1 135 1 minecraft:iron_block
setblock 0 144 0 minecraft:beacon

# Chests
setblock 4 151 4 minecraft:chest
setblock -4 151 -4 minecraft:chest

setblock 3 151 4 minecraft:red_concrete
setblock 4 151 5 minecraft:red_concrete
setblock 5 151 4 minecraft:red_concrete
setblock 4 151 3 minecraft:red_concrete

setblock -3 151 -4 minecraft:blue_concrete
setblock -4 151 -5 minecraft:blue_concrete
setblock -5 151 -4 minecraft:blue_concrete
setblock -4 151 -3 minecraft:blue_concrete



# ----------- Game Rules ------------------
say Setting mob griefing false
gamerule mobGriefing false


# Set players inside area to Adventure (cannot break blocks)
execute as @a[x=-5,z=-5,dx=10,dz=10] run gamemode adventure @s

# Restore players outside the area to Survival
execute as @a unless entity @s[x=-5,z=-5,dx=10,dz=10] run gamemode survival @s

# schedule function challenge_func:challenge_init 1s