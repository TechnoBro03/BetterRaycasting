# More efficient raycasting.

# Benchmarking at 500 steps:
# Old (Using minecraft:marker and TP)      New (Using positioned ^ ^ ^)
# 15ms Average              23ms Max       11ms Average       19ms Max

tellraw @a ["",{"text":"<","color":"white"},{"text":"Ray Casting","color":"aqua"},{"text":"> Datapack is loaded","color":"white"}]

scoreboard objectives add rayStep dummy

# Default: Do not show ray
scoreboard players set .showRay rayStep 0
# Default: 100 steps
scoreboard players set .maxStep rayStep 100