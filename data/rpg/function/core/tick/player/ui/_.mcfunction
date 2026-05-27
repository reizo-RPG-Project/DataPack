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

# 表示用データセット
    # HP
        data modify storage ui: display append value ["",{"text":"\uF80D",font:"space"},{"text":"\uE007",font:"icon/_"}," ",{score:{name:"@s",objective:"RPG.HP_MAX"}},{"text":"/"},{score:{name:"@s",objective:"RPG.HP"},color:"gray"}]
        execute if score $HP RPG.Temp matches ..5 run data modify storage ui: display[-1][-1].color set value "red"
    # DEF
    execute if data storage ui: DEF.head run data modify storage ui: display[-1] append value ["",{"text":"\uF80A",font:"space"},{"text":"0",font:"icon/armor/head/_"},{storage:"ui:",nbt:"DEF.head",font:"icon/armor/head/num",color:"white"}]
    execute if data storage ui: DEF.chest run data modify storage ui: display[-1] append value ["",{"text":"\uF80A",font:"space"},{"text":"1",font:"icon/armor/chest/_"},{storage:"ui:",nbt:"DEF.chest",font:"icon/armor/chest/num",color:"white"}]
    execute if data storage ui: DEF.legs run data modify storage ui: display[-1] append value ["",{"text":"\uF802\uF80A",font:"space"},{"text":"2",font:"icon/armor/legs/_"},{storage:"ui:",nbt:"DEF.legs",font:"icon/armor/legs/num",color:"white"}]
    execute if data storage ui: DEF.feet run data modify storage ui: display[-1] append value ["",{"text":"\uF80A",font:"space"},{"text":"3",font:"icon/armor/feet/_"},{storage:"ui:",nbt:"DEF.feet",font:"icon/armor/feet/num",color:"white"}]

# 表示
title @s actionbar {"storage":"ui:",nbt:"display",interpret:true}

# お掃除
    data remove storage ui: display
    data remove storage ui: DEF
    scoreboard players reset $HP RPG.Temp
    scoreboard players reset $DEF RPG.Temp