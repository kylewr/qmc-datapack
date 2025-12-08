# tellraw @a[tag=qmc.debug] {"text":"[QMC Scores] Updating scores...","color":"yellow"}

scoreboard players operation @s ptcopy = @s ts_PlayTime
scoreboard players operation @s ptcopy /= $stat consts
scoreboard players operation @s ptmin = @s ptcopy
execute store result storage qmcinternal:temp scores_updatelist_args.h int 1 run scoreboard players get @s ptmin
scoreboard players operation @s ptcopy = @s ts_PlayTime
scoreboard players operation @s ptcopy %= $stat consts
scoreboard players operation @s ptcopy /= $statmins consts
execute store result storage qmcinternal:temp scores_updatelist_args.m int 1 run scoreboard players get @s ptcopy
execute store result storage qmcinternal:temp scores_updatelist_args.health int 1 run scoreboard players get @s health

function qmcinternal:scores_updatelist with storage qmcinternal:temp scores_updatelist_args