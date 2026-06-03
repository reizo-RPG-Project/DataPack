#> rpg:core/tick/player/ui/def/_
#
# 
#
# @within function rpg:core/tick/player/ui/_

# 初期データ追加
    execute if data storage ui: DEF.head run data modify storage ui: DEF.data append value [{"text":"0",font:"icon/armor/head/_"},{storage:"ui:",nbt:"DEF.head",font:"icon/armor/head/num",color:"white"}]
    execute if data storage ui: DEF.chest run data modify storage ui: DEF.data append value [{"text":"\uF80A",font:"space"},{"text":"1",font:"icon/armor/chest/_"},{storage:"ui:",nbt:"DEF.chest",font:"icon/armor/chest/num",color:"white"},{"text":"\uF802",font:"space"}]
    execute if data storage ui: DEF.legs run data modify storage ui: DEF.data append value [{"text":"\uF80A",font:"space"},{"text":"2",font:"icon/armor/legs/_"},{storage:"ui:",nbt:"DEF.legs",font:"icon/armor/legs/num",color:"white"}]
    execute if data storage ui: DEF.feet run data modify storage ui: DEF.data append value [{"text":"\uF80A",font:"space"},{"text":"3",font:"icon/armor/feet/_"},{storage:"ui:",nbt:"DEF.feet",font:"icon/armor/feet/num",color:"white"},{"text":"\uF828\uF824",font:"space"}]