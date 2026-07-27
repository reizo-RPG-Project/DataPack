#> rpg:core/tick/player/ui/offhand
#
# 
#
# @within function rpg:core/tick/player/ui/_

data modify storage ui: alignL[-1].text set value "\uF80C\uF80A\uF809"
    execute if data storage ui: Effect.data run data modify storage ui: Effect.data[0][1][0].text set value "\uF82D\uF82B\uF82A\uF801"
    execute if data storage ui: Effect.data run data modify storage ui: Effect.data[-1].text set value "\uF80D\uF80B\uF80A\uF821"