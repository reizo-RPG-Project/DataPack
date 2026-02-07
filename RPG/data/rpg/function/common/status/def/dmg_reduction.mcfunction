#> rpg:common/status/def/dmg_reduction
#
# 
#
# @public

# 計算
    tellraw @a {"score":{name:"@s",objective:"RPG.DMG"}}
    scoreboard players operation $Common.DEF RPG.Temp = @s RPG.DEF
    scoreboard players operation $Common.DEF RPG.Temp *= #2 RPG.Const
    scoreboard players operation $Common.DEF RPG.Temp += #200 RPG.Const
    scoreboard players operation @s RPG.DMG *= #200 RPG.Const
    scoreboard players operation @s RPG.DMG /= $Common.DEF RPG.Temp
    tellraw @a {"score":{name:"@s",objective:"RPG.DMG"}}

# お掃除
scoreboard players reset $Common.DEF RPG.Temp