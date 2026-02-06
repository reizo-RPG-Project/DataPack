#> rpg:asset/item/0012.abstract_equipment/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# お願いOMD!
function #oh_my_dat:please

# OMD内のデータを取り出す
data modify storage reizo_mcfunc_engin:item 0012 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0012

# Combo
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 store result score $Item.0012.Tick.ComboID.Head RPG.Temp run data get storage reizo_mcfunc_engin:item Field.ComboID
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 store result score $Item.0012.Tick.ComboID.Chest RPG.Temp run data get storage reizo_mcfunc_engin:item Field.ComboID
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 store result score $Item.0012.Tick.ComboID.Legs RPG.Temp run data get storage reizo_mcfunc_engin:item Field.ComboID
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 store result score $Item.0012.Tick.ComboID.Feet RPG.Temp run data get storage reizo_mcfunc_engin:item Field.ComboID

# 全て同じ値ならコンボ発動！
execute if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Chest RPG.Temp if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Legs RPG.Temp if score $Item.0012.Tick.ComboID.Head RPG.Temp = $Item.0012.Tick.ComboID.Feet RPG.Temp run function rpg:asset/item/0012.abstract_equipment/tick/combo/run.m with storage reizo_mcfunc_engin:item Field


# 戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0012 set from storage reizo_mcfunc_engin:item 0012

# お掃除
data remove storage reizo_mcfunc_engin:item 0012