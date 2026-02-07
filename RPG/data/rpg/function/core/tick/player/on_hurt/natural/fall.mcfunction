#> rpg:core/tick/player/on_hurt/natural/fall
#
# 
#
# @within advancement rpg:player/on_hurt/fall

# ダメージ設定
    # data modify storage rpg:lib Damage.Type set value "Melee"
    # data modify storage rpg:lib Damage.Natural set value "Fall"
    scoreboard players operation $Fall RPG.DMG = @s RPG.FallDistance
    # scoreboard players operation $Fall RPG.DMG /= #40 RPG.Const
    # 落下ダメージ耐性
        # execute if score @s RPG.FallDamageRes matches 1.. run function
    scoreboard players operation @s RPG.DMG = $Fall RPG.DMG

# ダメージの適用
function rpg:core/tick/player/on_hurt/_

# お掃除
advancement revoke @s only rpg:player/on_hurt/natural/fall