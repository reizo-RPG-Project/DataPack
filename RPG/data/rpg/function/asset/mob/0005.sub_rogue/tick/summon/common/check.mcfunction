#> rpg:asset/mob/0005.sub_rogue/tick/summon/common/check
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/tick/summon/common/_

# スコアによって変える
execute if score @s RPG.Mob.0005.Summon matches 1 run return run function rpg:asset/mob/0005.sub_rogue/tick/summon/1
execute if score @s RPG.Mob.0005.Summon matches 2 run return run function rpg:asset/mob/0005.sub_rogue/tick/summon/2
execute if score @s RPG.Mob.0005.Summon matches 3 run return run function rpg:asset/mob/0005.sub_rogue/tick/summon/3