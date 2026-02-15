#> rpg:asset/mob/0005.sub_rogue/tick/summon/common/init
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/tick/_

# タグつけ
tag @s add RPG.Mob.0005.Summon

# 計算
    # Start
    scoreboard players add @s RPG.Mob.0005.Start_Time 350
    # Reset
        # タイマーを取得
        scoreboard players operation @s RPG.Mob.0005.Reset_Time = @s RPG.Mob.0005.Timer
        # Timer + 20
        scoreboard players add @s RPG.Mob.0005.Reset_Time 20
    # Summon
        # タイマーを取得
        scoreboard players operation @s RPG.Mob.0005.Summon_Time = @s RPG.Mob.0005.Timer
        # Timer + 40
        scoreboard players add @s RPG.Mob.0005.Summon_Time 40