#> rpg:core/tick/player/on_hurt/_
#
# 
#
# @public

# 防御力計算
function rpg:common/status/def/dmg_reduction

# HPを減らす
scoreboard players operation @s RPG.HP -= @s RPG.DMG

# 死んだ
execute if score @s RPG.HP matches ..0 run tag @s add RPG.Death

# お掃除
scoreboard players reset @s RPG.DEF
# data remove storage rpg:lib Damage