function #rx.playerdb:api/v2/get/self
execute as @s[predicate=hub:in_overworld] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "overworld"
execute as @s[predicate=hub:in_nether] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "the_nether"
execute as @s[predicate=hub:in_end] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "the_end"
data modify storage rx.playerdb:io player.data.primd.vanilla.last_location set from entity @s Pos 
data modify storage rx.playerdb:io player.data.primd.vanilla.last_inventory set from entity @s Inventory
function #rx.playerdb:api/v2/save/self

schedule function hubvanilla:start/main 1t replace