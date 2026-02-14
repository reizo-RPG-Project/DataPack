#> rpg:asset/mob/0004.thief/in_seriously/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# Init
execute unless data storage reizo_mcfunc_engin:context data.Field{GotSeriously:1b} run function rpg:asset/mob/0004.thief/in_seriously/init/_

# 常にパーティクル
execute if entity @p[tag=RPG.Mob.0002.Target,distance=..25] run particle trial_spawner_detection ~ ~ ~ 0.3 0.9 0.3 0 3