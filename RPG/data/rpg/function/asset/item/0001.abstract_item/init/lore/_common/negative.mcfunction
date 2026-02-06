#> rpg:asset/item/0001.abstract_item/init/lore/_common/negative
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/lore/str

data remove entity @s Item.components."minecraft:lore"[-1].extra[-2]
data modify entity @s Item.components."minecraft:lore"[-1].extra[-1].color set value "red"

scoreboard players reset $Item.0001.Init.Lore.Value