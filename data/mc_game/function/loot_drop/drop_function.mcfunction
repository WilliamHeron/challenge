# Loot drop with good stuff
# Run with: /execute positioned over world_surface run function mc_game:loot_drop/drop_function {x:-25,z:120,drop:1}
# Best if callled from drop_caller

$say Dropping chest at $(x) $(z)

# Place Chest drop structure
$place template mc_game:chest_drop $(x) ~ $(z)

# Place chest (sanity check)
$setblock $(x) ~ $(z) chest replace

# Set loot table
$loot insert $(x) ~ $(z) loot mc_game:drop_$(drop)

