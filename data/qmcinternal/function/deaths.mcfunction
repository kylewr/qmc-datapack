# tellraw @a[tag=qmc.debug] {"text":"[QMC Scores] Updating deaths...","color":"yellow"}

execute store result storage qmcinternal:temp tempdeaths.num int 1 run scoreboard players get @s deaths

function qmcinternal:deaths_updatecolors with storage qmcinternal:temp tempdeaths