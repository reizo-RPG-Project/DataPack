#> rpg:asset/item/0011.moon_fragment/not_hold/_
#
# っへ！綺麗になったぜ！
#
# @within function rpg:core/tick/player/_

# データ取得
    data modify storage reizo_mcfunc_engin:item 0011.private.Gravity set from entity @s attributes[{id:"minecraft:gravity"}].base
    data modify storage reizo_mcfunc_engin:item 0011.private.SafeFallDistance set from entity @s attributes[{id:"minecraft:safe_fall_distance"}].base

# attributeを元に戻す
    execute unless data storage reizo_mcfunc_engin:item 0011.private{Gravity:0.08} run attribute @s minecraft:gravity base reset
    execute if data storage reizo_mcfunc_engin:item 0011.private{SafeFallDistance:7.0} run attribute @s minecraft:safe_fall_distance base reset

# お掃除
data remove storage reizo_mcfunc_engin:item 0011