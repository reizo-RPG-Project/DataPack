#> rpg:core/tick/player/ui/_
#
# 
#
# @within function rpg:core/tick/player/_

#> ステータス類
    # HPの表示用計算
        scoreboard players operation $HP RPG.Temp = @s RPG.HP
        scoreboard players operation $HP RPG.Temp /= #4 RPG.Const
    # HP_regen
        scoreboard players operation $HP_TimerRaito RPG.Temp = @s RPG.HP_Timer
        execute store result storage ui: HP_regen.Raito int 1 run scoreboard players operation $HP_TimerRaito RPG.Temp /= #56 RPG.Const
        # tellraw @a {"storage":"ui:",nbt:"HP_regen.Raito"}
        execute if score $HP_TimerRaito RPG.Temp matches 0..9 run function rpg:core/tick/player/ui/hp/regen/set_text/1.m with storage ui: HP_regen
        execute if score $HP_TimerRaito RPG.Temp matches 10..35 run function rpg:core/tick/player/ui/hp/regen/set_text/10.m with storage ui: HP_regen
        # execute if score $HP_TimerRaito RPG.Temp matches 0..39 run tellraw @a "!"
    # DEFの各部取得
        data modify storage ui: DEF.head set from entity @s equipment.head.components."minecraft:custom_data".Item.Field.DEF
        data modify storage ui: DEF.chest set from entity @s equipment.chest.components."minecraft:custom_data".Item.Field.DEF
        data modify storage ui: DEF.legs set from entity @s equipment.legs.components."minecraft:custom_data".Item.Field.DEF
        data modify storage ui: DEF.feet set from entity @s equipment.feet.components."minecraft:custom_data".Item.Field.DEF

# お願いOMD!
function #oh_my_dat:please

# データゲット
data modify storage ui: PlayerData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI

# Pre
    # HP
    data modify storage ui: HP.data set value ["",{text:"\uE007",font:"icon/_","shadow_color":0},{score:{name:"@s",objective:"RPG.HP_MAX"}},{"text":"/"},{score:{name:"@s",objective:"RPG.HP"},color:"gray"}]
    # DEF
    function rpg:core/tick/player/ui/def/_
    # Record
    function rpg:core/tick/player/ui/record/_
    # Effect
    function rpg:core/tick/player/ui/effect/_

# 表示用データセット
    # 右左
        data modify storage ui: alignR set value ["",{"storage":"ui:",nbt:"Effect.data",interpret:true},{text:"\uF82C\uF824",font:"space"},{"storage":"ui:",nbt:"DEF.data",interpret:true}]
        data modify storage ui: alignL set value ["",{"storage":"ui:",nbt:"HP.data",interpret:true},{text:"\uF824",font:"space"},{"storage":"ui:",nbt:"HP_regen.data",interpret:true},{"storage":"ui:",nbt:"Record.data",interpret:true},{text:"\uF80C\uF809\uF808\uF804",font:"space"}]
    # HPが減ってたら赤くする
    execute if score $HP RPG.Temp matches ..5 run data modify storage ui: HP.data[-1].color set value "#b95c5c"
    # HPがなんの位にあるかでずらす
        execute if score @s RPG.HP matches 1..9 run data modify storage ui: alignL[-1].text set value "\uF80C\uF809"
        execute if score @s RPG.HP matches 10..99 run data modify storage ui: alignL[-1].text set value "\uF80C\uF809\uF806"
    # オフハンドにアイテムがあったら
    execute if data entity @s equipment.offhand.components."minecraft:custom_data".Item run function rpg:core/tick/player/ui/offhand

# 表示
title @s actionbar ["",{"storage":"ui:",nbt:"alignL",interpret:true},{"text":"\uF82F",font:"space"},{"storage":"ui:",nbt:"alignL",interpret:true},{"text":"\uF80B\uF809",font:"space"},{"storage":"ui:",nbt:"alignR",interpret:true},{text:"\uF82F",font:"space"},{"storage":"ui:",nbt:"alignR",interpret:true}]

# お掃除
    data remove storage ui: alignR
    data remove storage ui: alignL
    data remove storage ui: HP
    data remove storage ui: HP_regen
    data remove storage ui: DEF
    data remove storage ui: Record
    data remove storage ui: Effect
    scoreboard players reset $HP RPG.Temp