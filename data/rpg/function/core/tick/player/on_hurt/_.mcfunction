#> rpg:core/tick/player/on_hurt/_
#
# 
#
# @public

# 防御力計算
function rpg:common/status/def/dmg_reduction

# ダメージブレ
function rpg:common/damage/blur

# HPを減らす
scoreboard players operation @s RPG.HP -= @s RPG.DMG

# 死んだ
execute if score @s RPG.HP matches ..0 run function rpg:core/tick/player/on_death/_

# お掃除
# data remove storage rpg:lib Damage