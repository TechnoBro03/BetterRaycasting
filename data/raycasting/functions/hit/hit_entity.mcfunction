# These functions run AT the ray (where it hit an entity) AS the player
# '@e[sort=nearest,limit=1]' is the entity it hit

#Stops the ray when it hits entity (Recommended for efficiency)
tag @s add stopRay

execute as @e[sort=nearest,limit=1] run effect give @s glowing 2 1 true