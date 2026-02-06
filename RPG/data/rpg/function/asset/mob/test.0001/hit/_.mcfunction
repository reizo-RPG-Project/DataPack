#> rpg:asset/mob/test.0001/hit/_
#
# 
#
# @within  ../reizo_mcfunc_Engin/data/reizo_mcfunc_engin/function/asset/mob/.manager/tick/_.mcfunction

function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"hit/_"}
tellraw @a [{"text":"[ダメージ] ",color:"white"},{score:{name:"@s",objective:"RPG.DMG"},color:"red"}]
execute at @a if score @s reizo_mcfunc_Engin.ScoreID = @p reizo_mcfunc_Engin.ScoreID run tellraw @a [{"text":"[By] ",color:"white"},{selector:"@p"}]