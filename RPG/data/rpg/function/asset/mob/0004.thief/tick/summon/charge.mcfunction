#> rpg:asset/mob/0004.thief/tick/summon/charge
#
# 
#
# @within function rpg:asset/mob/0004.thief/tick/_

# 止まる
data modify entity @s Motion[0] set value 0
data modify entity @s Motion[2] set value 0

# 演出
execute positioned ~ ~2 ~ run function rpg:asset/mob/0004.thief/common/fx/1