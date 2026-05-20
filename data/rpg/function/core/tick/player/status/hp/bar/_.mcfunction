#> rpg:core/tick/player/status/hp/bar/_
#
# 
#
# @within function rpg:core/tick/player/status/hp/_

# 表示
    execute store result storage rpg:player HPRaito.Value int 1 run scoreboard players get $HP_Raito RPG.Temp
    function rpg:core/tick/player/status/hp/bar/_.m with storage rpg:player HPRaito
    effect give @s health_boost infinite 0 true
    effect clear @s health_boost