#> rpg:asset/mob/0005.sub_rogue/remove/_
#
# 
#
# @within function reizo_mcfunc_engin:api/mob/remove/core/run.m

# 幻影を殺す
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0005.Illusion] if score @s reizo_mcfunc_Engin.ScoreID = @n[distance=..0] reizo_mcfunc_Engin.ScoreID run function reizo_mcfunc_engin:api/mob/remove

# 親クラス動作の呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}