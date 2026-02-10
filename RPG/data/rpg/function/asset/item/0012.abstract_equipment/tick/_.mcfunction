#> rpg:asset/item/0012.abstract_equipment/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# お掃除
scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF
scoreboard players reset @s RPG.Item.0012.DEF_Math

# お願いOMD!
function #oh_my_dat:please

# OMD内のデータを取り出す
data modify storage reizo_mcfunc_engin:item 0012 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0012

# 装備の動作
function rpg:asset/item/0012.abstract_equipment/tick/equipment/_

# DEF
    # 足し算
    scoreboard players operation @s RPG.Item.0012.DEF_Math += @s RPG.Item.0012.DEF_Math.Head
    scoreboard players operation @s RPG.Item.0012.DEF_Math += @s RPG.Item.0012.DEF_Math.Chest
    scoreboard players operation @s RPG.Item.0012.DEF_Math += @s RPG.Item.0012.DEF_Math.Legs
    scoreboard players operation @s RPG.Item.0012.DEF_Math += @s RPG.Item.0012.DEF_Math.Feet
    # 自分のステータスに足す
    scoreboard players operation @s RPG.DEF += @s RPG.Item.0012.DEF_Math

# 全て同じ値ならコンボ発動！
execute if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Chest RPG.Temp if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Legs RPG.Temp if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Feet RPG.Temp run function rpg:asset/item/0012.abstract_equipment/tick/combo/run.m with storage reizo_mcfunc_engin:context data.Field

# 戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0012 set from storage reizo_mcfunc_engin:item 0012

# お掃除
data remove storage reizo_mcfunc_engin:item 0012