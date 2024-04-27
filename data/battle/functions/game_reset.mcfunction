scoreboard objectives remove timer

function battle:data_edit/data_delete

bossbar remove standbytime
bossbar remove playtime

effect clear @a
kill @e[type=minecraft:item]

#standby
setblock 282 78 -29 minecraft:air
setblock 282 78 -27 minecraft:air
setblock 282 78 -25 minecraft:air
setblock 282 78 -23 minecraft:air

worldborder set 100000

spawnpoint @a 273 76 -26
difficulty easy