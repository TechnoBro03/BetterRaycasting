# Run at_step
function raycasting:custom/at_step

# Decrease step
scoreboard players remove @s raycasting.step 1

# Detect reaching the end of ray (max step was reached)
execute if score @s raycasting.step matches 0 run function raycasting:custom/at_end

# Detect if ray hits a block
execute unless block ~ ~ ~ #raycasting:ray_transparent run function raycasting:custom/at_block

# Detect if ray hits entity
execute as @e[dx=0,tag=!raycasting.cast] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,tag=!raycasting.cast] run function raycasting:custom/at_entity

# Recursive loop
# Default: Step Distance = 0.5 (100 maxSteps * 0.5 stepDistant = 50 blocks)
execute if score @s raycasting.step matches 1.. as @s[tag=!raycasting.stop] positioned ^ ^ ^0.5 run function raycasting:internal/step