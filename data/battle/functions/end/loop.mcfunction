#タイマー
scoreboard players add end_timer timer 1

execute if score end_timer timer matches 200 run tp @a 273 77 -26
execute if score end_timer timer matches 201 run gamemode adventure @a
execute if score end_timer timer matches 203 run scoreboard objectives remove number
execute if score end_timer timer matches 204 run spawnpoint @a 273 76 -26
execute if score end_timer timer matches 205 run effect clear @a
execute if score end_timer timer matches 205 run effect give @a regeneration infinite 100 true
execute if score end_timer timer matches 205 run effect give @a saturation infinite 100 true
execute if score end_timer timer matches 205 run clear @a
execute if score end_timer timer matches 206 run setblock 282 78 -23 minecraft:air
