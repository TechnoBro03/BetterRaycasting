# Set players rayStep to any value.
scoreboard players operation @s rayStep = .maxStep rayStep

# Execute at the start of raycast
execute at @s anchored eyes positioned ^ ^ ^ run function raycasting:hit/hit_start

# Execute from eyes rotated as player
execute at @s anchored eyes positioned ^ ^ ^ run function raycasting:internal/step

# Remove all tags
tag @s remove hitBlock
tag @s remove hitEnd
tag @s remove hitEntity
tag @s remove stopRay