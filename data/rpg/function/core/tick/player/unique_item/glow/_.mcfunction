#> rpg:core/tick/player/unique_item/glow/_
#
# 
#
# @within function rpg:core/tick/player/unique_item/_

# アイテムによって動作を変える
    execute if items entity @s weapon.* torch run return run function rpg:core/tick/player/unique_item/glow/convert.m {ID:"0062.torch",mc_id:"torch"}