#> rpg:asset/mob/0002.abstract_enemy/in_seriously/_
#
# ここからは、"ガチ"で行くぜ？
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# 真剣になりやがった。
execute unless data entity @s data.Field.GotSeriously run data modify entity @s data.Field.GotSeriously set value 1b