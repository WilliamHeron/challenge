

# /function challenge_func:set_scoreboard

say Setting scoreboard.


team add Red "Red Team"
team modify Red color red

team add Blue "Blue Team"
team modify Blue color blue

scoreboard objectives add teamRand dummy


scoreboard players random @a teamRand 0 1

team join Red @a[scores={teamRand=0}]
team join Blue @a[scores={teamRand=1}]