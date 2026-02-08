#> rpg:asset/item/0002.abstract_weapon/hit/dmg_dealt/int
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/hit/_

# 魔法撃力
    scoreboard players operation @s RPG.DMG = @p[tag=RPG.Attacker] RPG.INT
    execute store result score $Item.0002.Hit.Weapon.Dmg RPG.Temp run data get storage reizo_mcfunc_engin:context data.Field.INT
    scoreboard players operation @s RPG.DMG += $Item.0002.Hit.Weapon.Dmg RPG.Temp