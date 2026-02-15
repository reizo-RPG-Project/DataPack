#> rpg:asset/0018.soul_lantern/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# タグ外し
tag @s remove RPG.Is_Can_Revival

# 死んだぞ！
execute if entity @s[tag=RPG.Death] run return run function rpg:asset/item/0018.soul_lantern/tick/on_death

# タグつけ
tag @s add RPG.Is_Can_Revival