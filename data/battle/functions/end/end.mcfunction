title @a title "試合終了"
execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1

worldborder set 100000
bossbar remove playtime
time set day
gamerule doDaylightCycle false

say 10秒後に戻ります