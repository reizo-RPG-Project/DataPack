#> rpg:asset/item/0012.abstract_equipment/tick/combo/run.m
#
# 
#
# @within function rpg:asset/item/0012.abstract_equipment/tick/_

$function rpg:asset/item/0012.abstract_equipment/tick/combo/$(ComboID)/_

# お掃除
scoreboard players reset $Item.0012.Tick.ComboID.Head RPG.Temp
scoreboard players reset $Item.0012.Tick.ComboID.Chest RPG.Temp
scoreboard players reset $Item.0012.Tick.ComboID.Legs RPG.Temp
scoreboard players reset $Item.0012.Tick.ComboID.Feet RPG.Temp