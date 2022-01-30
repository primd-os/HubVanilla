team add vanilla.Team
team modify vanilla.Team prefix {"text": "Survival | "}
team modify vanilla.Team collisionRule always
team modify vanilla.Team friendlyFire true

scoreboard objectives add vanilla.deaths deathCount
scoreboard objectives add vanilla.Variables dummy

schedule function hubvanilla:start/main 1t replace