#タイマー
scoreboard players add timer_ready timer 1

execute if score timer_ready timer matches 5 run worldborder center 275 -125
execute if score timer_ready timer matches 10 run worldborder set 150

execute if score timer_ready timer matches 15 run spawnpoint @a 275 40 -125
execute if score timer_ready timer matches 20 run scoreboard objectives setdisplay sidebar score
execute if score timer_ready timer matches 20 run execute if score HP追加 setting matches 2 run effect give @a health_boost infinite 0 true
execute if score timer_ready timer matches 20 run execute if score HP追加 setting matches 4 run effect give @a health_boost infinite 1 true
execute if score timer_ready timer matches 20 run execute if score HP追加 setting matches 6 run effect give @a health_boost infinite 2 true
execute if score timer_ready timer matches 20 run execute if score HP追加 setting matches 8 run effect give @a health_boost infinite 3 true
execute if score timer_ready timer matches 20 run execute if score HP追加 setting matches 10 run effect give @a health_boost infinite 4 true

execute if score timer_ready timer matches 25 run effect clear @a[tag=handicap_hp]
execute if score timer_ready timer matches 25 run execute if score ハンデHP setting matches 2 run effect give @a[tag=handicap_hp] health_boost infinite 0 true
execute if score timer_ready timer matches 25 run execute if score ハンデHP setting matches 4 run effect give @a[tag=handicap_hp] health_boost infinite 1 true
execute if score timer_ready timer matches 30 run effect give @a instant_health 5 100 true
execute if score timer_ready timer matches 30 run clear @a
execute if score timer_ready timer matches 35 run summon minecraft:end_crystal 259 29 -67

execute if score timer_ready timer matches 40 run title @a title "10"
execute if score timer_ready timer matches 60 run title @a title "9"
execute if score timer_ready timer matches 80 run title @a title "8"
execute if score timer_ready timer matches 100 run title @a title "7"
execute if score timer_ready timer matches 120 run title @a title "6"
execute if score timer_ready timer matches 140 run title @a title "5"
execute if score timer_ready timer matches 160 run title @a title "4"
execute if score timer_ready timer matches 180 run title @a title "3"
execute if score timer_ready timer matches 200 run title @a title "2"
execute if score timer_ready timer matches 220 run title @a title "1"
execute if score timer_ready timer matches 240 run function battle:ready/barrier_delete
execute if score timer_ready timer matches 240 run function battle:ready/playbar
execute if score timer_ready timer matches 240 run execute as @a at @s run playsound event.raid.horn master @s ~ ~ ~ 100 1
execute if score timer_ready timer matches 240 run title @a title ""


#playループへ
execute if score timer_ready timer matches 250 run setblock 282 78 -25 minecraft:redstone_block

#readyループ終了
execute if score timer_ready timer matches 250 run setblock 282 78 -27 minecraft:air