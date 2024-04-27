#タイマー
scoreboard players add timer_standby timer 1
#タイマーバー
scoreboard players remove timer_bar timer 1
execute store result bossbar minecraft:standbytime value run scoreboard players get timer_bar timer

#データ初期化
execute if score timer_standby timer matches 5 run function battle:data_edit/data_setup

#チェスト生成
execute if score timer_standby timer matches 10 run function battle:standby/chest/main
execute if score timer_standby timer matches 15 run function battle:standby/chest/base
execute if score timer_standby timer matches 20 run function battle:standby/chest/rare
execute if score timer_standby timer matches 25 run function battle:standby/chest/random

execute if score timer_standby timer matches 30 run say 地形生成中...  1/4
execute if score timer_standby timer matches 30 run clone 200 0 0 275 150 75 200 0 -200
execute if score timer_standby timer matches 120 run say 地形生成中...  2/4
execute if score timer_standby timer matches 120 run clone 200 0 76 275 150 150 200 0 -124
execute if score timer_standby timer matches 210 run say 地形生成中...  3/4
execute if score timer_standby timer matches 210 run clone 276 0 0 350 150 75 276 0 -200
execute if score timer_standby timer matches 300 run say 地形生成中...  4/4
execute if score timer_standby timer matches 300 run clone 276 0 76 350 150 150 276 0 -124
execute if score timer_standby timer matches 390 run say 地形生成完了
execute if score timer_standby timer matches 394 run function battle:standby/barrier_setup
execute if score timer_standby timer matches 395 run kill @e[type=minecraft:item]
execute if score timer_standby timer matches 396 run bossbar remove standbytime
execute if score timer_standby timer matches 397 run effect clear @a
execute if score timer_standby timer matches 398 run function battle:standby/weather
execute if score timer_standby timer matches 399 run function battle:standby/teleport
execute if score timer_standby timer matches 400 run say プレイヤー テレポート完了

#readyループへ
execute if score timer_standby timer matches 410 run setblock 282 78 -27 minecraft:redstone_block

#standbyループ終了
execute if score timer_standby timer matches 410 run setblock 282 78 -29 minecraft:air
