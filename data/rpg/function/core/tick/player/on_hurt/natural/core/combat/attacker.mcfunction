#> rpg:core/tick/player/on_hurt/natural/core/combat/attacker
#
# 
#
# @within function rpg:core/tick/player/on_hurt/natural/combat

# タグつけ
tag @s add RPG.Attacker

# スコアで結びつける
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = @p[tag=RPG.Victim,distance=0] reizo_mcfunc_Engin.ScoreID