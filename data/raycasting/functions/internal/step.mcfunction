# Shows ray
execute if score .showRay rayStep matches 1 run particle electric_spark ~ ~ ~ 0 0 0 0 1 force

# Detect hits
execute if score @s rayStep matches 1 run tag @s add hitEnd
execute positioned ~ ~-1 ~ at @e[distance=..1,type=!player] run tag @s add hitEntity
execute unless block ~ ~ ~ #raycasting:ray_transparent run tag @s add hitBlock

# Run appropriate hit function
execute as @s[tag=hitEntity] run function raycasting:hit/hit_entity
execute as @s[tag=hitBlock] run function raycasting:hit/hit_block
execute as @s[tag=hitEnd] run function raycasting:hit/hit_end

scoreboard players remove @s rayStep 1

# Default: Step Distance = 0.5 (100 maxSteps * 0.5 stepDistant = 50 blocks)
execute as @s[tag=!stopRay,tag=!hitEnd] positioned ^ ^ ^0.5 run function raycasting:internal/step