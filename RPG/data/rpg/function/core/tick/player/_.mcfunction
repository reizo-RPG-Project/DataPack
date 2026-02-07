#> rpg:core/tick/player/_
#
# 
#
# @within function rpg:core/tick/_

# ステータス関連
    function rpg:core/tick/player/status/hp/_
    function rpg:core/tick/player/status/def/_

# バニラ要素から一切のダメージを受けない
    effect give @s resistance infinite 10 true
    effect give @s instant_health infinite 252 true
    effect clear @s absorption
    effect clear @s slowness

#> イレギュラーだが持っていないことを検知するためには致し方ない！
    # [IN]
    function #oh_my_dat:please
    data modify storage rpg:item 0011.public set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0011.public
    # [RUN]
    execute if data storage rpg:item 0011.public{Holding:1b} if data storage rpg:item 0011.public{Holded:0b} run function rpg:asset/item/0011.moon_fragment/not_hold/_
    # [SET]
    data modify storage rpg:item 0011.public.Holded set value 0b
    # [OUT]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0011.public set from storage rpg:item 0011.public