#> rpg:core/load/_
#
# 
#
# @within tag/function minecraft:load

# スコア作成
scoreboard objectives add RPG.Temp dummy
scoreboard objectives add RPG.Const dummy
scoreboard objectives add RPG.HP dummy
scoreboard objectives add RPG.HP_MAX dummy
scoreboard objectives add RPG.HP_regen dummy
scoreboard objectives add RPG.HP_Timer dummy
scoreboard objectives add RPG.STR dummy
scoreboard objectives add RPG.DEF dummy
scoreboard objectives add RPG.DMG dummy

# 定数
scoreboard players set #2 RPG.Const 2
scoreboard players set #8 RPG.Const 8
scoreboard players set #10 RPG.Const 10
scoreboard players set #25 RPG.Const 25
scoreboard players set #40 RPG.Const 40
scoreboard players set #200 RPG.Const 200
scoreboard players set #2000 RPG.Const 2000