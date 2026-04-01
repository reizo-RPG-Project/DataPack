#> rpg:debug/status/display
#
# 
#
# @within function rpg:core/tick/player/_

# 俺のステータスを表示してくれ！
    scoreboard objectives add RPG.Debug.Status dummy
    scoreboard players operation 体力 RPG.Debug.Status = @s RPG.HP
    scoreboard players operation 最大体力 RPG.Debug.Status = @s RPG.HP_MAX
    scoreboard players operation 物理攻撃力 RPG.Debug.Status = @s RPG.STR
    scoreboard players operation 魔法攻撃力 RPG.Debug.Status = @s RPG.INT
    scoreboard players operation 防御力 RPG.Debug.Status = @s RPG.DEF