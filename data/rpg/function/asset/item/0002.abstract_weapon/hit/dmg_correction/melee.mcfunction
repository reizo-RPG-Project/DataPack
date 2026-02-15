#> rpg:asset/item/0002.abstract_weapon/hit/dmg_correction/melee
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/hit/_

# 補正
    scoreboard players operation @s RPG.DMG *= #10 RPG.Const
    execute if entity @s[advancements={rpg:click_detection={melee_charge0=true}}] run return run scoreboard players set @s RPG.DMG 0
    execute if entity @s[advancements={rpg:click_detection={melee_charge1=true}}] run return run scoreboard players operation @s RPG.DMG /= #40 RPG.Const
    execute if entity @s[advancements={rpg:click_detection={melee_charge2=true}}] run return run scoreboard players operation @s RPG.DMG /= #25 RPG.Const
    execute if entity @s[advancements={rpg:click_detection={melee_charge3=true}}] run return run scoreboard players operation @s RPG.DMG /= #10 RPG.Const
    execute if entity @s[advancements={rpg:click_detection={melee_charge4=true}}] run return run scoreboard players operation @s RPG.DMG /= #8 RPG.Const
    execute if entity @s[advancements={rpg:click_detection={charged=true}}] run return run scoreboard players operation @s RPG.DMG /= #10 RPG.Const