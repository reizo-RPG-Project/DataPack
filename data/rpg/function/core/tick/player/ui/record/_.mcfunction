#> rpg:core/tick/player/ui/record/_
#
# 
#
# @within function rpg:core/tick/player/ui/_

# お願いOMD!
    function #oh_my_dat:please

# データ取得
data modify storage ui: Record.PlayerData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record

# データが無かったら止める
execute unless data storage ui: Record.PlayerData run return 0

# 出す
data modify storage ui: Record.data set from storage ui: Record.PlayerData.Text

data modify storage ui: Record.data append value {"text":"\uF80A\uF809\uF801",font:"space"}