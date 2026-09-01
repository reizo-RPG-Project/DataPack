#> rpg:core/tick/player/status/update
#
# 
#
# @within function rpg:core/tick/player/_

# Originに合わせる
    scoreboard players operation @s RPG.HP_MAX = @s RPG.OriginHP_MAX
    scoreboard players operation @s RPG.HP_regen = @s RPG.OriginHP_regen
    scoreboard players operation @s RPG.MP_MAX = @s RPG.OriginMP_MAX
    scoreboard players operation @s RPG.MP_regen = @s RPG.OriginMP_regen
    scoreboard players operation @s RPG.DEF = @s RPG.OriginDEF
    scoreboard players operation @s RPG.STR = @s RPG.OriginSTR
    scoreboard players operation @s RPG.INT = @s RPG.OriginINT
    scoreboard players operation @s RPG.SPD = @s RPG.OriginSPD

# Bonus
    scoreboard players operation @s RPG.HP_MAX += @s RPG.Bonus.HP_MAX
    scoreboard players operation @s RPG.HP_regen += @s RPG.Bonus.HP_regen
    scoreboard players operation @s RPG.MP_MAX += @s RPG.Bonus.MP_MAX
    scoreboard players operation @s RPG.MP_regen += @s RPG.Bonus.MP_regen
    scoreboard players operation @s RPG.DEF += @s RPG.Bonus.DEF
    scoreboard players operation @s RPG.STR += @s RPG.Bonus.STR
    scoreboard players operation @s RPG.INT += @s RPG.Bonus.INT
    scoreboard players operation @s RPG.SPD += @s RPG.Bonus.SPD

# Buff関連
    scoreboard players operation @s RPG.HP_MAX += @s RPG.Buff.HP_MAX
    scoreboard players operation @s RPG.HP_regen += @s RPG.Buff.HP_regen
    scoreboard players operation @s RPG.MP_MAX += @s RPG.Buff.MP_MAX
    scoreboard players operation @s RPG.MP_regen += @s RPG.Buff.MP_regen
    scoreboard players operation @s RPG.DEF += @s RPG.Buff.DEF
    scoreboard players operation @s RPG.STR += @s RPG.Buff.STR
    scoreboard players operation @s RPG.INT += @s RPG.Buff.INT
    scoreboard players operation @s RPG.SPD += @s RPG.Buff.SPD