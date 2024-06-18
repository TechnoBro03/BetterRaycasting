# These functions run AT the ray (where it hit an entity) AS the entity
# '@a[tag=raycasting.cast]' is the player casting the ray

# Stops the ray when it hits entity (Recommended for efficiency)
tag @a[tag=raycasting.cast] add raycasting.stop

effect give @s glowing 1 1 true