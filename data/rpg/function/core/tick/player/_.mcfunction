#> rpg:core/tick/player/_
#
# 
#
# @within function rpg:core/tick/_

# お掃除
execute if score @s RPG.FallDistance matches 1..399 run scoreboard players reset @s RPG.FallDistance

# ステータス関連
function rpg:core/tick/player/status/hp/_

# バニラ要素から一切のダメージを受けない
    effect give @s resistance infinite 10 true
    effect give @s instant_health infinite 252 true
    effect clear @s absorption
    effect clear @s slowness

# データ取得
function rpg:core/tick/player/get_data/_