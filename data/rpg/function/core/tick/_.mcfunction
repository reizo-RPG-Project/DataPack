#> rpg:core/tick/_
#
# 
#
# @within tag/function minecraft:tick

execute as @a at @s run function rpg:core/tick/player/_

execute if entity @e[type=item,tag=!reizo_mcfunc_Engin.Object] as @e[type=item,tag=!reizo_mcfunc_Engin.Object] at @s if data entity @s Item.components."minecraft:custom_data".Item.Field.FX run function rpg:core/tick/convert_item_of_object