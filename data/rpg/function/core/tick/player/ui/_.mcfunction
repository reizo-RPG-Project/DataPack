#> rpg:core/tick/player/ui/_
#
# 
#
# @within function rpg:core/tick/player/_

# 死にかけ計算
    scoreboard players operation $HP RPG.Temp = @s RPG.HP
    scoreboard players operation $HP RPG.Temp /= #4 RPG.Const

# HP
    data modify storage ui: display append value ["",{"text":"\uF80D",font:"space"},{"text":"\uE007",font:"icon/_"}," ",{score:{name:"@s",objective:"RPG.HP_MAX"}},{"text":"/"},{score:{name:"@s",objective:"RPG.HP"},color:"gray"}]
    execute if score $HP RPG.Temp matches ..5 run data modify storage ui: display[-1][-1].color set value "red"

# 表示
title @s actionbar {"storage":"ui:",nbt:"display",interpret:true}

# お掃除
    data remove storage ui: display
    scoreboard players reset $HP RPG.Temp