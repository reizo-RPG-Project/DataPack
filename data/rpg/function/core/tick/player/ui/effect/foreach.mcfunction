#> rpg:core/tick/player/ui/effect/foreach
#
# 
#
# @within function rpg:core/tick/player/ui/effect/_

# リストの数を確認
execute store result score $UI.Effect.Len RPG.Temp run data get storage ui: Effect.data[]

# 一定数だったら動作を止める(仮)
# execute if score $UI.Effect.Len RPG.Temp matches 0.. run return 0

#> Duration関係
    # Duration取得
    execute store result score $UI.Effect.Duration RPG.Temp run data get storage ui: PlayerData.Effect[-1].Duration
    # Durationが100以下で点滅
        execute if score $UI.Effect.Duration RPG.Temp matches ..60 run scoreboard players operation $UI.Effect.Duration RPG.Temp %= #10 RPG.Const
        execute if score $UI.Effect.Duration RPG.Temp matches 8 run data modify storage ui: Effect.Color set value "#EFEFEF"
        execute if score $UI.Effect.Duration RPG.Temp matches 7 run data modify storage ui: Effect.Color set value "#CCCCCC"
        execute if score $UI.Effect.Duration RPG.Temp matches 6 run data modify storage ui: Effect.Color set value "#999999"
        execute if score $UI.Effect.Duration RPG.Temp matches 5 run data modify storage ui: Effect.Color set value "#434343"
        execute if score $UI.Effect.Duration RPG.Temp matches 4 run data modify storage ui: Effect.Color set value "#434343"
        execute if score $UI.Effect.Duration RPG.Temp matches 3 run data modify storage ui: Effect.Color set value "#999999"
        execute if score $UI.Effect.Duration RPG.Temp matches 2 run data modify storage ui: Effect.Color set value "#CCCCCC"
        execute if score $UI.Effect.Duration RPG.Temp matches 1 run data modify storage ui: Effect.Color set value "#EFEFEF"
        data modify storage ui: PlayerData.Effect[-1].data[-1].color set from storage ui: Effect.Color
    # お掃除
        scoreboard players reset $UI.Effect.Duration
        data remove storage ui: PlayerData.Effect[-1].Duration

# 追加
data modify storage ui: Effect.data prepend from storage ui: PlayerData.Effect[-1].data

# その分スペースを減らす
data modify storage ui: Effect.Space append value [{"text":"\uF808\uF804"}]

# お掃除
data remove storage ui: PlayerData.Effect[-1]

# 再帰
execute if data storage ui: PlayerData.Effect[-1] run function rpg:core/tick/player/ui/effect/foreach