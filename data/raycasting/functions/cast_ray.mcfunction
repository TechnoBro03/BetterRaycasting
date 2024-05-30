# Set players step to max step value
scoreboard players operation @s raycasting.step = .max raycasting.step

# Give player cast tag
tag @s add raycasting.cast

# Run at_start
execute at @s anchored eyes positioned ^ ^ ^ run function raycasting:custom/at_start

# Execute from eyes rotated as player
execute at @s anchored eyes positioned ^ ^ ^ run function raycasting:internal/step

# Remove all tags
tag @s remove raycasting.stop
tag @s remove raycasting.cast