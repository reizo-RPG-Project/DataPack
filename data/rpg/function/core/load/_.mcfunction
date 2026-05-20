#> rpg:core/load/_
#
# 
#
# @within tag/function minecraft:load

# スコア作成
    # システム
    scoreboard objectives add RPG.Temp dummy
    scoreboard objectives add RPG.Const dummy
    # プレイヤー
    scoreboard objectives add RPG.FallDistance dummy
    scoreboard objectives add RPG.FallDamageRes dummy
    # ステータス
    scoreboard objectives add RPG.HP dummy
    scoreboard objectives add RPG.HP_MAX dummy
    scoreboard objectives add RPG.OriginHP_MAX dummy
    scoreboard objectives add RPG.HP_regen dummy
    scoreboard objectives add RPG.HP_Timer dummy
    scoreboard objectives add RPG.MP dummy
    scoreboard objectives add RPG.MP_MAX dummy
    scoreboard objectives add RPG.OriginMP_MAX dummy
    scoreboard objectives add RPG.MP_regen dummy
    scoreboard objectives add RPG.MP_Timer dummy
    scoreboard objectives add RPG.STR dummy
    scoreboard objectives add RPG.OriginSTR dummy
    scoreboard objectives add RPG.INT dummy
    scoreboard objectives add RPG.OriginINT dummy
    scoreboard objectives add RPG.DEF dummy
    scoreboard objectives add RPG.OriginDEF dummy
    # その他
    scoreboard objectives add RPG.DMG dummy

# 定数
function rpg:core/load/const

# Debug
scoreboard objectives add RPG.Debug.Status dummy