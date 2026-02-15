#> rpg:asset/mob/0004.thief/in_seriously_init/tp
#
# 
#
# @within function rpg:asset/mob/0004.thief/in_seriously_init/target

# ブロックがあるなら再帰
execute unless block ~ ~ ~ #reizo_mcfunc_engin:no_col positioned ~ ~1 ~ run return run function rpg:asset/mob/0004.thief/in_seriously/init/tp/_

# ないならTP
tp @s ~ ~ ~