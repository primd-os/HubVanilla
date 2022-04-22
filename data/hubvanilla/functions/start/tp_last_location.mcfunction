data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.vanilla.last_location
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension: "overworld"} in minecraft:overworld positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension: "the_nether"} in minecraft:the_nether positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension: "the_end"} in minecraft:the_end positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.vanilla.last_spawn
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim: "minecraft:overworld"} in minecraft:overworld positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim: "minecraft:the_nether"} in minecraft:the_nether positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim: "minecraft:the_end"} in minecraft:the_end positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~

setblock 0 0 0 yellow_shulker_box
data modify block 0 0 0 Items set from storage rx.playerdb:io player.data.primd.vanilla.last_inventory
item replace entity @a[tag=vanilla.active_player] inventory.0 from block 0 0 0 container.0
item replace entity @a[tag=vanilla.active_player] inventory.1 from block 0 0 0 container.1
item replace entity @a[tag=vanilla.active_player] inventory.2 from block 0 0 0 container.2
item replace entity @a[tag=vanilla.active_player] inventory.3 from block 0 0 0 container.3
item replace entity @a[tag=vanilla.active_player] inventory.4 from block 0 0 0 container.4
item replace entity @a[tag=vanilla.active_player] inventory.5 from block 0 0 0 container.5
item replace entity @a[tag=vanilla.active_player] inventory.6 from block 0 0 0 container.6
item replace entity @a[tag=vanilla.active_player] inventory.7 from block 0 0 0 container.7
item replace entity @a[tag=vanilla.active_player] inventory.8 from block 0 0 0 container.8
item replace entity @a[tag=vanilla.active_player] inventory.9 from block 0 0 0 container.9
item replace entity @a[tag=vanilla.active_player] inventory.10 from block 0 0 0 container.10
item replace entity @a[tag=vanilla.active_player] inventory.11 from block 0 0 0 container.11
item replace entity @a[tag=vanilla.active_player] inventory.12 from block 0 0 0 container.12
item replace entity @a[tag=vanilla.active_player] inventory.13 from block 0 0 0 container.13
item replace entity @a[tag=vanilla.active_player] inventory.14 from block 0 0 0 container.14
item replace entity @a[tag=vanilla.active_player] inventory.15 from block 0 0 0 container.15
item replace entity @a[tag=vanilla.active_player] inventory.16 from block 0 0 0 container.16
item replace entity @a[tag=vanilla.active_player] inventory.17 from block 0 0 0 container.17
item replace entity @a[tag=vanilla.active_player] inventory.18 from block 0 0 0 container.18
item replace entity @a[tag=vanilla.active_player] inventory.19 from block 0 0 0 container.19
item replace entity @a[tag=vanilla.active_player] inventory.20 from block 0 0 0 container.20
item replace entity @a[tag=vanilla.active_player] inventory.21 from block 0 0 0 container.21
item replace entity @a[tag=vanilla.active_player] inventory.22 from block 0 0 0 container.22
item replace entity @a[tag=vanilla.active_player] inventory.23 from block 0 0 0 container.23
item replace entity @a[tag=vanilla.active_player] inventory.24 from block 0 0 0 container.24
item replace entity @a[tag=vanilla.active_player] inventory.25 from block 0 0 0 container.25
item replace entity @a[tag=vanilla.active_player] inventory.26 from block 0 0 0 container.26


data modify block 0 0 0 Items set from storage rx.playerdb:io player.data.primd.vanilla.last_hotbar
item replace entity @a[tag=vanilla.active_player] hotbar.0 from block 0 0 0 container.0
item replace entity @a[tag=vanilla.active_player] hotbar.1 from block 0 0 0 container.1
item replace entity @a[tag=vanilla.active_player] hotbar.2 from block 0 0 0 container.2
item replace entity @a[tag=vanilla.active_player] hotbar.3 from block 0 0 0 container.3
item replace entity @a[tag=vanilla.active_player] hotbar.4 from block 0 0 0 container.4
item replace entity @a[tag=vanilla.active_player] hotbar.5 from block 0 0 0 container.5
item replace entity @a[tag=vanilla.active_player] hotbar.6 from block 0 0 0 container.6
item replace entity @a[tag=vanilla.active_player] hotbar.7 from block 0 0 0 container.7
item replace entity @a[tag=vanilla.active_player] hotbar.8 from block 0 0 0 container.8
item replace entity @a[tag=vanilla.active_player] weapon.offhand from block 0 0 0 container.9
item replace entity @a[tag=vanilla.active_player] armor.head from block 0 0 0 container.10
item replace entity @a[tag=vanilla.active_player] armor.chest from block 0 0 0 container.11
item replace entity @a[tag=vanilla.active_player] armor.legs from block 0 0 0 container.12
item replace entity @a[tag=vanilla.active_player] armor.feet from block 0 0 0 container.13
setblock 0 0 0 air

scoreboard players set xpAdder vanilla.Variables 1024
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 1024 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 1024
scoreboard players set xpAdder vanilla.Variables 512
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 512 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 512
scoreboard players set xpAdder vanilla.Variables 256
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 256 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 256
scoreboard players set xpAdder vanilla.Variables 128
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 128 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 128
scoreboard players set xpAdder vanilla.Variables 64
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 64 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 64
scoreboard players set xpAdder vanilla.Variables 32
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 32 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 32
scoreboard players set xpAdder vanilla.Variables 16
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 16 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 16
scoreboard players set xpAdder vanilla.Variables 8
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 8 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 8
scoreboard players set xpAdder vanilla.Variables 4
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 4 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 4
scoreboard players set xpAdder vanilla.Variables 2
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 2 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 2
scoreboard players set xpAdder vanilla.Variables 1
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 1 levels
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 1

scoreboard players set xpAdder vanilla.Variables 1024
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 1024 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreL 1024
scoreboard players set xpAdder vanilla.Variables 512
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 512 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 512
scoreboard players set xpAdder vanilla.Variables 256
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 256 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 256
scoreboard players set xpAdder vanilla.Variables 128
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 128 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 128
scoreboard players set xpAdder vanilla.Variables 64
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 64 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 64
scoreboard players set xpAdder vanilla.Variables 32
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 32 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 32
scoreboard players set xpAdder vanilla.Variables 16
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 16 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 16
scoreboard players set xpAdder vanilla.Variables 8
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 8 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 8
scoreboard players set xpAdder vanilla.Variables 4
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 4 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 4
scoreboard players set xpAdder vanilla.Variables 2
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 2 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 2
scoreboard players set xpAdder vanilla.Variables 1
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run xp add @a[tag=vanilla.active_player,limit=1] 1 points
execute if score @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP >= xpAdder vanilla.Variables run scoreboard players remove @a[tag=vanilla.active_player,limit=1] vanilla.xpStoreP 1