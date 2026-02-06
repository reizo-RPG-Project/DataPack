#> rpg:asset/0005.abstract_food/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 食べられるか確認
    execute if data storage reizo_mcfunc_engin:context data.Field{CanAlwaysEat:1b} run data modify storage reizo_mcfunc_engin:item 0005.private.can_eat set value 1b
    execute if data storage reizo_mcfunc_engin:context data.Field{CanAlwaysEat:0b} if score @s RPG.HP < @s RPG.HP_MAX run data modify storage reizo_mcfunc_engin:item 0005.private.can_eat set value 1b

# 使用
execute if score @s reizo_mcfunc_Engin.using_Item matches 1 if data storage reizo_mcfunc_engin:item 0005.private{can_eat:1b} run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"used/_"}

# お掃除
data remove storage reizo_mcfunc_engin:item 0005