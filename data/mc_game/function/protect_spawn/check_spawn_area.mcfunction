# This function checks to see if players in are in spawn are

# Step 1: Remove old tag
tag @a remove in_spawn_area

# Step 2: Tag players currently inside the 48x48 spawn box
tag @a[x=-24,y=-10,z=-24,dx=48,dy=200,dz=48] add in_spawn_area

