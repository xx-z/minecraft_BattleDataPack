execute if score 安置収縮まで（分） setting matches 5 run scoreboard players set play_bar timer 6000
execute if score 安置収縮まで（分） setting matches 7 run scoreboard players set play_bar timer 8400
execute if score 安置収縮まで（分） setting matches 10 run scoreboard players set play_bar timer 12000
execute if score 安置収縮まで（分） setting matches 12 run scoreboard players set play_bar timer 14400
execute if score 安置収縮まで（分） setting matches 15 run scoreboard players set play_bar timer 18000
bossbar add playtime "安置収縮まで"
execute if score 安置収縮まで（分） setting matches 5 run bossbar set minecraft:playtime max 6000
execute if score 安置収縮まで（分） setting matches 7 run bossbar set minecraft:playtime max 8400
execute if score 安置収縮まで（分） setting matches 10 run bossbar set minecraft:playtime max 12000
execute if score 安置収縮まで（分） setting matches 12 run bossbar set minecraft:playtime max 14400
execute if score 安置収縮まで（分） setting matches 15 run bossbar set minecraft:playtime max 18000
bossbar set minecraft:playtime players @a