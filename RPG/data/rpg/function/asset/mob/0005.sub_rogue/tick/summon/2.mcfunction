#> rpg:asset/mob/0005.sub_rogue/tick/summon/2
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/tick/_

# 回数をランダムに決める
execute store result storage reizo_mcfunc_engin:lib In.For.LoopCount int 1 run random value 1..3

# 召喚するEntityのセット
data modify storage reizo_mcfunc_engin:lib In.For.func set value "rpg:asset/mob/0005.sub_rogue/tick/summon/mob/zombie"