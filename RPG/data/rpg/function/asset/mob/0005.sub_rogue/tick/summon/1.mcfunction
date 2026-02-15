#> rpg:asset/mob/0005.sub_rogue/tick/summon/1
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/tick/_

# 回数をランダムに決める
    execute store result storage reizo_mcfunc_engin:mob 0005.private.zombie int 1 run random value 0..1
    execute store result storage reizo_mcfunc_engin:mob 0005.private.zombie_kid int 1 run random value 1..2