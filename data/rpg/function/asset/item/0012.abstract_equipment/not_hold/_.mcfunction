#> rpg:asset/item/0012.abstract_equipment/not_hold/_
#
# 
#
# @within function rpg:asset/item/0012.abstract_equipment/tick/equipment/_

# ストップ
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 if score @s RPG.Item.0012.DEF_Math.Head matches 0 run return 0
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 if score @s RPG.Item.0012.DEF_Math.Chest matches 0 run return 0
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 if score @s RPG.Item.0012.DEF_Math.Legs matches 0 run return 0
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 if score @s RPG.Item.0012.DEF_Math.Feet matches 0 run return 0

# リセット
scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF
scoreboard players reset @s RPG.Item.0012.DEF_Math
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 run return run scoreboard players reset @s RPG.Item.0012.DEF_Math.Head
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 run return run scoreboard players reset @s RPG.Item.0012.DEF_Math.Chest
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 run return run scoreboard players reset @s RPG.Item.0012.DEF_Math.Legs
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 run return run scoreboard players reset @s RPG.Item.0012.DEF_Math.Feet