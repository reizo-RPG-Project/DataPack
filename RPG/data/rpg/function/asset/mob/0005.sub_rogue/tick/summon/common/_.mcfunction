#> rpg:asset/mob/0005.sub_rogue/tick/summon/common/_
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/tick/_

# スコアアップ
scoreboard players add @s RPG.Mob.0005.Summon 1

# スコアによって変える
execute if score @s RPG.Mob.0005.Summon matches 1 run function rpg:asset/mob/0005.sub_rogue/tick/summon/1
execute if score @s RPG.Mob.0005.Summon matches 2 run function rpg:asset/mob/0005.sub_rogue/tick/summon/2
execute if score @s RPG.Mob.0005.Summon matches 3 run function rpg:asset/mob/0005.sub_rogue/tick/summon/3

# 召喚
function reizo_libs:for/_

# 召喚した敵に幻影であることを示すタグをつける
tag @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0001.Enemy,distance=..0] add RPG.Mob.0005.Illusion

# スコアで結びつけ
scoreboard players operation @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0001.Enemy,distance=..1] reizo_mcfunc_Engin.ScoreID = @s reizo_mcfunc_Engin.ScoreID

# お掃除
tag @s remove RPG.Mob.0005.Summon