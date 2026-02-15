#> rpg/asset/object/0001.click_detection/summon/_
#
# Objectの召喚処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 元となるEntityの召喚
summon vex ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init"],attributes:[{id:"max_health",base:1024.0f}],Team:"NoCol",NoAI:1b,Silent:1b}