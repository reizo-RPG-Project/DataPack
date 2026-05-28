#> rpg:core/tick/player/ui/_
#
# 
#
# @within function rpg:core/tick/player/_

#> ステータス類
    # HPの表示用計算
        scoreboard players operation $HP RPG.Temp = @s RPG.HP
        scoreboard players operation $HP RPG.Temp /= #4 RPG.Const
    # DEFの各部取得
        data modify storage ui: DEF.head set from entity @s equipment.head.components."minecraft:custom_data".Item.Field.DEF
        data modify storage ui: DEF.chest set from entity @s equipment.chest.components."minecraft:custom_data".Item.Field.DEF
        data modify storage ui: DEF.legs set from entity @s equipment.legs.components."minecraft:custom_data".Item.Field.DEF
        data modify storage ui: DEF.feet set from entity @s equipment.feet.components."minecraft:custom_data".Item.Field.DEF

    # DEF
    execute if data storage ui: DEF run function rpg:core/tick/player/ui/def/_

# 表示用データセット
    # 右左
        data modify storage ui: alignR set value ["",{"storage":"ui:",nbt:"DEF.data",interpret:true},{text:"\uF823",font:"space"},{"text":"\uF800",font:"space"},{text:"\uE007",font:"icon/_","shadow_color":0},{score:{name:"@s",objective:"RPG.HP_MAX"}},{"text":"/"},{score:{name:"@s",objective:"RPG.HP"},color:"gray"}]
        data modify storage ui: alignL set value ["",{text:"\uF82F",font:"space"}]
    # HPが減ってたら赤くする
    execute if score $HP RPG.Temp matches ..5 run data modify storage ui: alignR[-1].color set value "red"
    # HPがなんの位にあるかでずらす
        execute if score @s RPG.HP matches 1..9 run data modify storage ui: alignR[3].text set value "\uF828\uF824"
        execute if score @s RPG.HP matches 10..99 run data modify storage ui: alignR[3].text set value "\uF826"


# 表示
title @s actionbar ["",{"text":"\uF82F",font:"space"},{"text":"\uF80B\uF809",font:"space"},{"storage":"ui:",nbt:"alignR",interpret:true},{text:"\uF82F",font:"space"},{"storage":"ui:",nbt:"alignR",interpret:true}]

# お掃除
    data remove storage ui: alignR
    data remove storage ui: alignL
    data remove storage ui: DEF
    scoreboard players reset $HP RPG.Temp