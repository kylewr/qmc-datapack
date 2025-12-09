execute as @a[tag=qmc.nodeaths] run scoreboard players display numberformat @s deaths fixed {"text":"","color":"dark_gray","italic":true}
execute unless data storage qmc:settings {NoDeaths:1} as @a[tag=!qmc.nodeaths] run function qmcinternal:deaths

execute as @a[team=bot,tag=!qmc.nopt] run scoreboard players display numberformat @s ptmin fixed {"text":"No playtime","italic":true,"color":"gray"}
execute as @a[tag=qmc.nopt] run scoreboard players display numberformat @s ptmin blank
execute unless data storage qmc:settings {NoPT:1} as @a[team=!bot,tag=!qmc.nopt] run function qmcinternal:scores

execute as @a[tag=qmc.trim] run function qmcinternal:trim_tick with storage qmc:settings TrimRotations