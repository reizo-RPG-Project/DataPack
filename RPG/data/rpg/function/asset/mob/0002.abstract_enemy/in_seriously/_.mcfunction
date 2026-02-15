#> rpg:asset/mob/0002.abstract_enemy/in_seriously/_
#
# ここからは、"ガチ"で行くぜ？
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# 真剣になりやがった。
execute unless data entity @s data.Field.GotSeriously run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"in_seriously_init/_"}