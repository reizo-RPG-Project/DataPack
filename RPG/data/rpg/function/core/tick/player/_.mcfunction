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