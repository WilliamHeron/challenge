

# /function mc_game:set_scoreboard

say Setting scoreboard.


team add Red "Red Team"
team modify Red color red

team add Blue "Blue Team"
team modify Blue color blue


scoreboard objectives add team_score dummy "Team Score"

scoreboard players set Red team_score 0
scoreboard players set Blue team_score 0

scoreboard objectives setdisplay sidebar team_score



# team leave @a

# execute as @a if entity @s[x_rotation=..179] run team join Red @s
# execute as @a if entity @s[x_rotation=180..] run team join Blue @s
