#> rpg:asset/item/0005.abstract_food/used/recovery
#
# 
#
# @within function rpg:asset/item/0005.abstract_food/used/_

# 回復処理
    execute store result score $Item.0005.Recovery RPG.Temp run data get storage reizo_mcfunc_engin:context data.Field.Recovery
    scoreboard players operation @s RPG.HP += $Item.0005.Recovery RPG.Temp

# お掃除
scoreboard players reset $Item.0005.Recovery RPG.Temp