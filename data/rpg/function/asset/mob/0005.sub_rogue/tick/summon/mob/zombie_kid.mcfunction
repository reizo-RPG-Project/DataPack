#> rpg:asset/mob/0005.sub_rogue/tick/summon/mob/zombie_kid
#
# 
#
# @within function rpg:asset/mob/0005.sub_rogue/tick/summon/common/_

# 引数セット
    data modify storage reizo_mcfunc_engin:lib In.For.LoopCount set from storage reizo_mcfunc_engin:mob 0005.private.zombie_kid
    data modify storage reizo_mcfunc_engin:lib In.For.func set value "reizo_mcfunc_engin:api/mob/summon.m {ID:'0006.zombie_kid',namespace:'rpg'}"

# ライブラリ使用
function reizo_libs:for/_