function #rx.playerdb:api/v2/get/self
execute as @s[predicate=hub:in_overworld] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "overworld"
execute as @s[predicate=hub:in_nether] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "the_nether"
execute as @s[predicate=hub:in_end] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "the_end"
execute unless data entity @s SpawnX run data remove storage rx.playerdb:io player.data.primd.vanilla.last_spawn
execute if data entity @s SpawnX run data modify storage rx.playerdb:io player.data.primd.vanilla.last_spawn set value [0d,100d,0d]
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.vanilla.last_spawn[0] double 1 run data get entity @s SpawnX
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.vanilla.last_spawn[1] double 1 run data get entity @s SpawnY
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.vanilla.last_spawn[2] double 1 run data get entity @s SpawnZ
data modify storage rx.playerdb:io player.data.primd.vanilla.last_spawn_dim set from entity @s SpawnDimension
data modify storage rx.playerdb:io player.data.primd.vanilla.last_location set from entity @s Pos 

execute in hub:hub run setblock 0 0 0 yellow_shulker_box
execute in hub:hub run item replace block 0 0 0 container.0 from entity @s inventory.0
execute in hub:hub run item replace block 0 0 0 container.1 from entity @s inventory.1
execute in hub:hub run item replace block 0 0 0 container.2 from entity @s inventory.2
execute in hub:hub run item replace block 0 0 0 container.3 from entity @s inventory.3
execute in hub:hub run item replace block 0 0 0 container.4 from entity @s inventory.4
execute in hub:hub run item replace block 0 0 0 container.5 from entity @s inventory.5
execute in hub:hub run item replace block 0 0 0 container.6 from entity @s inventory.6
execute in hub:hub run item replace block 0 0 0 container.7 from entity @s inventory.7
execute in hub:hub run item replace block 0 0 0 container.8 from entity @s inventory.8
execute in hub:hub run item replace block 0 0 0 container.9 from entity @s inventory.9
execute in hub:hub run item replace block 0 0 0 container.10 from entity @s inventory.10
execute in hub:hub run item replace block 0 0 0 container.11 from entity @s inventory.11
execute in hub:hub run item replace block 0 0 0 container.12 from entity @s inventory.12
execute in hub:hub run item replace block 0 0 0 container.13 from entity @s inventory.13
execute in hub:hub run item replace block 0 0 0 container.14 from entity @s inventory.14
execute in hub:hub run item replace block 0 0 0 container.15 from entity @s inventory.15
execute in hub:hub run item replace block 0 0 0 container.16 from entity @s inventory.16
execute in hub:hub run item replace block 0 0 0 container.17 from entity @s inventory.17
execute in hub:hub run item replace block 0 0 0 container.18 from entity @s inventory.18
execute in hub:hub run item replace block 0 0 0 container.19 from entity @s inventory.19
execute in hub:hub run item replace block 0 0 0 container.20 from entity @s inventory.20
execute in hub:hub run item replace block 0 0 0 container.21 from entity @s inventory.21
execute in hub:hub run item replace block 0 0 0 container.22 from entity @s inventory.22
execute in hub:hub run item replace block 0 0 0 container.23 from entity @s inventory.23
execute in hub:hub run item replace block 0 0 0 container.24 from entity @s inventory.24
execute in hub:hub run item replace block 0 0 0 container.25 from entity @s inventory.25
execute in hub:hub run item replace block 0 0 0 container.26 from entity @s inventory.26
execute in hub:hub run data remove storage rx.playerdb:io player.data.primd.vanilla.last_inventory
execute in hub:hub run data modify storage rx.playerdb:io player.data.primd.vanilla.last_inventory set from block 0 0 0 Items


execute in hub:hub run data modify block 0 0 0 Items set value []
execute in hub:hub run item replace block 0 0 0 container.0 from entity @s hotbar.0
execute in hub:hub run item replace block 0 0 0 container.1 from entity @s hotbar.1
execute in hub:hub run item replace block 0 0 0 container.2 from entity @s hotbar.2
execute in hub:hub run item replace block 0 0 0 container.3 from entity @s hotbar.3
execute in hub:hub run item replace block 0 0 0 container.4 from entity @s hotbar.4
execute in hub:hub run item replace block 0 0 0 container.5 from entity @s hotbar.5
execute in hub:hub run item replace block 0 0 0 container.6 from entity @s hotbar.6
execute in hub:hub run item replace block 0 0 0 container.7 from entity @s hotbar.7
execute in hub:hub run item replace block 0 0 0 container.8 from entity @s hotbar.8
execute in hub:hub run item replace block 0 0 0 container.9 from entity @s weapon.offhand
execute in hub:hub run item replace block 0 0 0 container.10 from entity @s armor.head
execute in hub:hub run item replace block 0 0 0 container.11 from entity @s armor.chest
execute in hub:hub run item replace block 0 0 0 container.12 from entity @s armor.legs
execute in hub:hub run item replace block 0 0 0 container.13 from entity @s armor.feet
execute in hub:hub run data remove storage rx.playerdb:io player.data.primd.vanilla.last_hotbar
execute in hub:hub run data modify storage rx.playerdb:io player.data.primd.vanilla.last_hotbar set from block 0 0 0 Items
execute in hub:hub run setblock 0 0 0 air

execute store result score @s vanilla.xpStoreL run xp query @s levels
execute store result score @s vanilla.xpStoreP run xp query @s points
function #rx.playerdb:api/v2/save/self