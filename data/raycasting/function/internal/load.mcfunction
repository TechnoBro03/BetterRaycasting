tellraw @a ["",{"text":"<","color":"white"},{"text":"Raycasting","color":"aqua"},{"text":"> Datapack ","color":"white"},{"text":"loaded","color":"green"}]

scoreboard objectives add raycasting.step dummy

# Default max step: 100 steps
scoreboard players set .max raycasting.step 100