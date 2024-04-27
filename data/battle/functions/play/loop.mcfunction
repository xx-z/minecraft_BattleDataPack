#死んだ人は<team>deadに参加
execute as @a[scores={death=1..}] run team join dead @s
#死んだ人は<tag>playerを削除
execute as @a[scores={death=1..}] run tag @s remove player
#死んだ人はスペクテイターモードに
execute as @a[scores={death=1..}] run gamemode spectator @a[team=dead]

#死んでいない人にポイント追加
execute if score 順位ポイント setting matches 1 run execute as @a[scores={death=1..}] run scoreboard players add @a[tag=player] score 1
execute if score 順位ポイント setting matches 2 run execute as @a[scores={death=1..}] run scoreboard players add @a[tag=player] score 2
execute if score 順位ポイント setting matches 3 run execute as @a[scores={death=1..}] run scoreboard players add @a[tag=player] score 3
#死んだ回数を0にリセット
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

#execute as @a[scores={death=1..}] run scoreboard players remove number number 1

#倒した人にポイント追加
execute if score キルポイント setting matches 1 run execute as @e[scores={kill=1..}] run scoreboard players add @s score 1
execute if score キルポイント setting matches 2 run execute as @e[scores={kill=1..}] run scoreboard players add @s score 2
execute if score キルポイント setting matches 3 run execute as @e[scores={kill=1..}] run scoreboard players add @s score 3

#倒した回数を0にリセット
execute as @a[scores={kill=1..}] run scoreboard players set @s kill 0

#execute as @e[type=minecraft:snowball,nbt={Item:{tag:{display:{Name:'[{"text":"煙玉"}]'}}}}] at @s unless block ~ ~-1 ~ air run particle minecraft:campfire_signal_smoke ^ ^ ^ 2 2 2 0.001 1000
#execute as @e[type=minecraft:snowball,nbt={Item:{tag:{display:{Name:'[{"text":"どくどくだま"}]'}}}}] at @s unless block ~ ~-1 ~ air run summon minecraft:pufferfish ~ ~ ~



scoreboard players remove play_bar timer 1
execute store result bossbar minecraft:playtime value run scoreboard players get play_bar timer
execute if score play_bar timer matches 0 run execute as @a at @s run playsound event.raid.horn master @s ~ ~ ~ 100 1
execute if score play_bar timer matches 0 run title @a subtitle "安置収縮開始"
execute if score play_bar timer matches 0 run title @a title ""
execute if score 安置収縮時間（分） setting matches 1 run execute if score play_bar timer matches 0 run worldborder add -131 60
execute if score 安置収縮時間（分） setting matches 3 run execute if score play_bar timer matches 0 run worldborder add -131 180
execute if score 安置収縮時間（分） setting matches 5 run execute if score play_bar timer matches 0 run worldborder add -131 300
time add 1


scoreboard players set number number 0
execute as @a[tag=player] run scoreboard players add number number 1
execute if score number number matches 1 run function battle:end/end
execute if score number number matches 1 run setblock 282 78 -23 minecraft:redstone_block
execute if score number number matches 1 run setblock 282 78 -25 minecraft:air
