scoreboard players enable @s TPA
scoreboard players enable @s[tag=Requested] TPAccept
scoreboard players reset @s[tag=!Requested] TPAccept
execute as @s[gamemode=adventure] run gamemode survival
execute as @s[scores={TPA=1..},tag=!tpReady] at @s run function hubvanilla:secret/tplist
execute as @s[scores={TPA=1..},tag=tpReady] at @s run function hubvanilla:secret/tpa
execute as @s[scores={TPAccept=1..}] at @s run function hubvanilla:secret/tpaccept
execute as @s[scores={TPAccept=1..}] run scoreboard players set @s TPAccept 0