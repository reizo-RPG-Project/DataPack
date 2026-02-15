#> rpg:asset/mob/0004.thief/in_seriously/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# 常にパーティクル
execute if entity @p[tag=RPG.Mob.0002.Target,distance=..25] run particle trial_spawner_detection ~ ~ ~ 0.3 0.9 0.3 0 3

# 親メソッドの呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"in_seriously/_"}