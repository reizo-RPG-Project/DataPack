#> rpg:core/tick/player/ui/effect/foreach
#
# 
#
# @within function rpg:core/tick/player/ui/effect/_

# リストの数を確認
execute store result score $UI.Effect.Len RPG.Temp run data get storage ui: Effect.data[]

# 一定数だったら動作を止める(仮)
# execute if score $UI.Effect.Len RPG.Temp matches 0.. run return 0

# 追加
data modify storage ui: Effect.data append from storage ui: PlayerData.Effect[-1]

# その分スペースを減らす
data modify storage ui: Effect.Space append value [{"text":"\uF808\uF804"}]

# お掃除
data remove storage ui: PlayerData.Effect[-1]

# 再帰
execute if data storage ui: PlayerData.Effect[-1] run function rpg:core/tick/player/ui/effect/foreach