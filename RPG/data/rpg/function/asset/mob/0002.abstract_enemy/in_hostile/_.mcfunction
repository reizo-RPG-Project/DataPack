#> rpg:asset/mob/0002.abstract_enemy/in_hostile/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# 自身の敵対者にタグを付与
execute on target run tag @s add RPG.Mob.0002.Target

# AIタイマーアップ
scoreboard players add @s RPG.Mob.0002.AITimer 1
