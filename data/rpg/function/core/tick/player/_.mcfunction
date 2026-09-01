#> rpg:core/tick/player/_
#
# 
#
# @within function rpg:core/tick/_

# お掃除
execute if score @s RPG.FallDistance matches 1..399 run scoreboard players reset @s RPG.FallDistance

# ステータス関連
    function rpg:core/tick/player/status/hp/_
    function rpg:core/tick/player/status/mp/_
    function rpg:core/tick/player/status/def/_
    function rpg:core/tick/player/status/spd/_

# バニラ要素から一切のダメージを受けない
    effect give @s resistance infinite 10 true
    effect give @s instant_health infinite 252 true
    effect clear @s absorption
    effect clear @s slowness

# 一生満腹
effect give @s saturation infinite 10 true

# データ取得
function rpg:core/tick/player/get_data/_

# 特殊なアイテムの動作
execute if items entity @s container.* #rpg:unique/all run function rpg:core/tick/player/unique_item/_

# UI
function rpg:core/tick/player/ui/_

# ステータスの更新
execute if entity @s[tag=RPG.StatusUpdate] run function rpg:core/tick/player/status/update