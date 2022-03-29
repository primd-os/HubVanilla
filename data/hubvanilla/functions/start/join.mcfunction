execute in minecraft:overworld run tp @s 0 254 0
team join vanilla.Team @s
gamemode survival
scoreboard players set @s vanilla.deaths 0

function #rx.playerdb:api/v2/get/self

tag @s add vanilla.active_player
execute if data storage rx.playerdb:io player.data.primd.vanilla.last_location run summon marker ~ ~ ~ {Tags:["vanilla.tper"]}
execute unless data storage rx.playerdb:io player.data.primd.vanilla.last_spawn run execute in hub:hub run spawnpoint @s 0 2 0
execute as @e[type=marker,x=0,tag=vanilla.tper] run function hubvanilla:start/tp_last_location
kill @e[type=marker,x=0,tag=vanilla.tper]
tag @s remove vanilla.active_player
tag @s add hub.disableSpawnControl