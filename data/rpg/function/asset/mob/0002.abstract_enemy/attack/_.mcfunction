#> rpg:asset/mob/0002.abstract_enemy/attack/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# Victimの動作
execute at @a[tag=RPG.Victim] if score @s reizo_mcfunc_Engin.ScoreID = @p[distance=0] reizo_mcfunc_Engin.ScoreID run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"victim/_"}

# お掃除
tag @s remove RPG.Attacker
scoreboard players reset @s reizo_mcfunc_Engin.ScoreID