# Loot drop with good stuff
# Calls dropper function

$forceload add $(x) $(z)

$execute positioned over world_surface run function mc_game:loot_drop/drop_function {x:$(x),z:$(z),drop:$(drop)}

# $forceload remove x:$(x),z:$(z)