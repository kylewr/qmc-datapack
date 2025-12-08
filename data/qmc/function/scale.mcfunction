$scoreboard players set $scale qmc.temp $(m)

execute if score $scale qmc.temp matches 0 run attribute @s scale modifier remove qmcscale
execute if score $scale qmc.temp matches 0 run attribute @s safe_fall_distance modifier remove qmcscale
execute if score $scale qmc.temp matches 0 run attribute @s movement_speed modifier remove qmcscale
execute if score $scale qmc.temp matches 0 run attribute @s jump_strength modifier remove qmcscale
execute if score $scale qmc.temp matches 0 run attribute @s step_height modifier remove qmcscale
execute if score $scale qmc.temp matches 0 run attribute @s minecraft:block_interaction_range modifier remove qmcscale
execute if score $scale qmc.temp matches 0 run attribute @s entity_interaction_range modifier remove qmcscale

$execute unless score $scale qmc.temp matches 0 run attribute @s scale modifier add qmcscale $(m) add_multiplied_total
$execute unless score $scale qmc.temp matches 0 run attribute @s safe_fall_distance modifier add qmcscale $(m) add_multiplied_total
$execute unless score $scale qmc.temp matches 0 run attribute @s movement_speed modifier add qmcscale $(m) add_multiplied_total
$execute unless score $scale qmc.temp matches 0 run attribute @s jump_strength modifier add qmcscale $(m) add_multiplied_total
$execute unless score $scale qmc.temp matches 0 run attribute @s step_height modifier add qmcscale $(m) add_multiplied_total
$execute unless score $scale qmc.temp matches 0 run attribute @s minecraft:block_interaction_range modifier add qmcscale $(m) add_multiplied_total
$execute unless score $scale qmc.temp matches 0 run attribute @s entity_interaction_range modifier add qmcscale $(m) add_multiplied_total