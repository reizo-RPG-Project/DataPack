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
    scoreboard objectives add RPG.OriginHP_regen dummy
    scoreboard objectives add RPG.HP_Timer dummy
    scoreboard objectives add RPG.HP_OldRaito dummy
    scoreboard objectives add RPG.MP dummy
    scoreboard objectives add RPG.MP_MAX dummy
    scoreboard objectives add RPG.OriginMP_MAX dummy
    scoreboard objectives add RPG.MP_regen dummy
    scoreboard objectives add RPG.OriginMP_regen dummy
    scoreboard objectives add RPG.MP_Timer dummy
    scoreboard objectives add RPG.MP_OldRaito dummy
    scoreboard objectives add RPG.STR dummy
    scoreboard objectives add RPG.OriginSTR dummy
    scoreboard objectives add RPG.INT dummy
    scoreboard objectives add RPG.OriginINT dummy
    scoreboard objectives add RPG.DEF dummy
    scoreboard objectives add RPG.OriginDEF dummy
    scoreboard objectives add RPG.DEF_Old dummy
    scoreboard objectives add RPG.SPD dummy
    scoreboard objectives add RPG.OriginSPD dummy
    scoreboard objectives add RPG.Bonus.HP_MAX dummy
    scoreboard objectives add RPG.Bonus.HP_regen dummy
    scoreboard objectives add RPG.Bonus.MP_MAX dummy
    scoreboard objectives add RPG.Bonus.MP_regen dummy
    scoreboard objectives add RPG.Bonus.DEF dummy
    scoreboard objectives add RPG.Bonus.STR dummy
    scoreboard objectives add RPG.Bonus.INT dummy
    scoreboard objectives add RPG.Bonus.SPD dummy
    scoreboard objectives add RPG.Buff.HP_MAX dummy
    scoreboard objectives add RPG.Buff.HP_regen dummy
    scoreboard objectives add RPG.Buff.MP_MAX dummy
    scoreboard objectives add RPG.Buff.MP_regen dummy
    scoreboard objectives add RPG.Buff.DEF dummy
    scoreboard objectives add RPG.Buff.STR dummy
    scoreboard objectives add RPG.Buff.INT dummy
    scoreboard objectives add RPG.Buff.SPD dummy
    # その他
    scoreboard objectives add RPG.DMG dummy
    scoreboard objectives add RPG.FireDMG dummy

# 定数
function rpg:core/load/const

# Debug
scoreboard objectives add RPG.Debug.Status dummy