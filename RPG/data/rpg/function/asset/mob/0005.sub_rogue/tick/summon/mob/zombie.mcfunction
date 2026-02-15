#> rpg:asset/mob/0005.sub_rogue/tick/summon/mob/zombie
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/tick/summon/1

# 引数セット
    data modify storage reizo_mcfunc_engin:lib In.For.LoopCount set from storage reizo_mcfunc_engin:mob 0005.private.zombie
    data modify storage reizo_mcfunc_engin:lib In.For.func set value "reizo_mcfunc_engin:api/mob/summon.m {ID:'0003.zombie',namespace:'rpg'}"

# ライブラリ使用
function reizo_libs:for/_