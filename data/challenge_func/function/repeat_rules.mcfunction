

# /function challenge_func:repeat_rules

say looping


# Add tag to players inside area (don't remove existing tags yet)
# tag @a[x=-5,z=-5,dx=10,dz=10] add in_protected_area

# Players inside area who are not already in Adventure -> set to Adventure
# gamemode adventure @a[x=-5,z=-5,dx=10,dz=10]


# Players outside area who still have the tag -> remove tag and set Survival
# gamemode survival @a[tag=!in_protected_area]

# tag remove in_protected_area
# tag @a[tag=in_protected_area] remove in_protected_area

# tag @a[tag=in_protected_area] list


gamemode adventure @a[x=0, z=0, distance=..5]


say Players inside: @a[x=-5,z=-5,dx=10,dz=10]

# schedule function challenge_func:repeat_rules 2s

# execute as @r run schedule function challenge_func:repeat_rules 2s
