#> rpg:core/tick/player/ui/def/_
#
# 
#
# @within function rpg:core/tick/player/ui/_

#> 最後尾
    # head  => [][{name:"head"}]
    # chest => [][{name:"chest"}]
    # legs  => [][{name:"legs"}]
    # feet  => [][{name:"feet"}]

# 初期データ追加
    execute if data storage ui: DEF.head run data modify storage ui: DEF.data append value [{"text":"\uF80A",font:"space"},{"text":"0",font:"icon/armor/head/_"},{storage:"ui:",nbt:"DEF.head",font:"icon/armor/head/num",color:"white"},{name:"head"}]
    execute if data storage ui: DEF.chest run data modify storage ui: DEF.data append value [{"text":"\uF80A",font:"space"},{"text":"1",font:"icon/armor/chest/_"},{storage:"ui:",nbt:"DEF.chest",font:"icon/armor/chest/num",color:"white"},{"text":"\uF802",font:"space"},{name:"chest"}]
    execute if data storage ui: DEF.legs run data modify storage ui: DEF.data append value [{"text":"\uF80A",font:"space"},{"text":"2",font:"icon/armor/legs/_"},{storage:"ui:",nbt:"DEF.legs",font:"icon/armor/legs/num",color:"white"},{name:"legs"}]
    execute if data storage ui: DEF.feet run data modify storage ui: DEF.data append value [{"text":"\uF80A",font:"space"},{"text":"3",font:"icon/armor/feet/_"},{storage:"ui:",nbt:"DEF.feet",font:"icon/armor/feet/num",color:"white"},{"text":"\uF827",font:"space"},{name:"feet"}]

# 値による位置の変更
    execute store result score $UI.DEF.head RPG.Temp run data get storage ui: DEF.head
    execute if score $UI.DEF.head RPG.Temp matches 1..9 run data modify storage ui: DEF.data[][{name:"head"}] set value {text:"\uF828\uF821",font:"space"}
    execute store result score $UI.DEF.chest RPG.Temp run data get storage ui: DEF.chest
    execute if score $UI.DEF.chest RPG.Temp matches 1..9 run data modify storage ui: DEF.data[][{name:"chest"}] set value {text:"\uF828\uF821",font:"space"}
    execute store result score $UI.DEF.legs RPG.Temp run data get storage ui: DEF.legs
    execute if score $UI.DEF.legs RPG.Temp matches 1..9 run data modify storage ui: DEF.data[][{name:"legs"}] set value {text:"\uF828\uF822",font:"space"}
    execute store result score $UI.DEF.feet RPG.Temp run data get storage ui: DEF.feet
        execute if score $UI.DEF.feet RPG.Temp matches 8 run data modify storage ui: DEF.data[][{name:"feet"}] set value {text:"\uF821",font:"space"}
    execute if score $UI.DEF.feet RPG.Temp matches 10..99 run data modify storage ui: DEF.data[][{name:"feet"}] set value {text:"\uF808\uF801",font:"space"}

# お掃除
    scoreboard players reset $UI.DEF.head
    scoreboard players reset $UI.DEF.chest
    scoreboard players reset $UI.DEF.legs
    scoreboard players reset $UI.DEF.feet
    execute if data storage ui: DEF.data[][{name:"head"}] run data remove storage ui: DEF.data[][{name:"head"}]
    execute if data storage ui: DEF.data[][{name:"chest"}] run data remove storage ui: DEF.data[][{name:"chest"}]
    execute if data storage ui: DEF.data[][{name:"legs"}] run data remove storage ui: DEF.data[][{name:"legs"}]
    execute if data storage ui: DEF.data[][{name:"feet"}] run data remove storage ui: DEF.data[][{name:"feet"}]