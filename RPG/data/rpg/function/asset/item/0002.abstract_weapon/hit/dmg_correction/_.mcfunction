#> rpg:asset/item/0002.abstract_weapon/hit/dmg_correction/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/hit/_

# 取得
scoreboard players operation @p[tag=RPG.Attacker] RPG.DMG = @s RPG.DMG

# 対象を変更
execute as @p[tag=RPG.Attacker] run function rpg:asset/item/0002.abstract_weapon/hit/dmg_correction/melee

# コピー
scoreboard players operation @s RPG.DMG += @p[tag=RPG.Attacker] RPG.DMG

# お掃除
scoreboard players reset @p[tag=RPG.Attacker] RPG.DMG