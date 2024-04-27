gamerule commandBlockOutput false
gamemode adventure @a

#ゲームリセット
function battle:game_reset

effect give @a saturation infinite 100 true
effect give @a instant_health infinite 100 true
effect give @a health_boost infinite 99 true

scoreboard objectives setdisplay sidebar setting

scoreboard objectives add timer dummy
scoreboard players set timer_bar timer 400
bossbar add standbytime "ゲーム開始まで"
bossbar set minecraft:standbytime max 400
bossbar set minecraft:standbytime players @a

#title @a subtitle "アドバンスモード"
title @a title "ゲーム起動"
say .
say .
say .
say .
say .
say .
say .
say .
say .
say .
say .
say .
say >>>>>>>>>>ゲーム起動<<<<<<<<<<

#standby
setblock 282 78 -29 minecraft:redstone_block