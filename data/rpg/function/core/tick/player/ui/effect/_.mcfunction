#> rpg:core/tick/player/ui/effect/_
#
# 
#
# @within function rpg:core/tick/player/ui/_

# データが無かったら止める
execute unless data storage ui: PlayerData.Effect[0] run return 0

# 初期スペース量
data modify storage ui: Effect.Space set value [\
    {"text":"",font:"space"},\
    [{"text":"\uF82D\uF82B\uF82A"}]\
]

# データがあるなら追加
function rpg:core/tick/player/ui/effect/foreach

# スペース追加
data modify storage ui: Effect.data prepend from storage ui: Effect.Space
data modify storage ui: Effect.data append value {"text":"\uF80D\uF80B\uF80A",font:"space"}

# 戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Effect set from storage ui: PlayerData.Effect