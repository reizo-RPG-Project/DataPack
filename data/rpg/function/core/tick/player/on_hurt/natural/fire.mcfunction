#> rpg:core/tick/player/on_hurt/natural/fire
#
# 
#
# @within advancement rpg:player/on_hurt/natural/fire

# ダメージ設定
    # data modify storage rpg:lib Damage.Type set value "Melee"
    # data modify storage rpg:lib Damage.Natural set value "Fall"
    execute unless score @n[type=marker] RPG.FireDMG matches 1.. run scoreboard players set @s RPG.DMG 3
    execute if score @n[type=marker] RPG.FireDMG matches 1.. run scoreboard players operation @s RPG.DMG = @n[type=marker] RPG.FireDMG

# ダメージの適用
function rpg:core/tick/player/on_hurt/_

# お掃除
    advancement revoke @s only rpg:player/on_hurt/natural/fire
    scoreboard players reset @s RPG.FireDMG