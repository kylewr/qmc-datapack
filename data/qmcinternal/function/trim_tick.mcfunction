scoreboard players add @s qmc.trimticks 1
$execute if score @s qmc.trimticks matches $(time) run scoreboard players add @s qmc.trimmat 1
scoreboard players operation @s qmc.trimmat %= $max_trim_mat qmc.trimmat

execute store result storage qmc:temp args.m int 1 run scoreboard players get @s qmc.trimmat

data modify storage qmc:temp args.type set value "minecraft:netherite_helmet"
data modify storage qmc:temp args.slot set value "head"
$execute if score @s qmc.trimticks matches $(time) if items entity @s armor.head minecraft:netherite_helmet[custom_data={rotate_mat:1}] run function qmcinternal:replace_trim with storage qmc:temp args
data modify storage qmc:temp args.type set value "minecraft:netherite_chestplate"
data modify storage qmc:temp args.slot set value "chest"
$execute if score @s qmc.trimticks matches $(time) if items entity @s armor.chest minecraft:netherite_chestplate[custom_data={rotate_mat:1}] run function qmcinternal:replace_trim with storage qmc:temp args
data modify storage qmc:temp args.type set value "minecraft:netherite_leggings"
data modify storage qmc:temp args.slot set value "legs"
$execute if score @s qmc.trimticks matches $(time) if items entity @s armor.legs minecraft:netherite_leggings[custom_data={rotate_mat:1}] run function qmcinternal:replace_trim with storage qmc:temp args
data modify storage qmc:temp args.type set value "minecraft:netherite_boots"
data modify storage qmc:temp args.slot set value "feet"
$execute if score @s qmc.trimticks matches $(time) if items entity @s armor.feet minecraft:netherite_boots[custom_data={rotate_mat:1}] run function qmcinternal:replace_trim with storage qmc:temp args

# execute store result storage qmc:temp args.m int 1 run scoreboard players get @s qmc.trimmat
# $data modify storage qmc:temp args.type set value "$(_type)"
# $execute if score @s qmc.trimticks matches $(time) run function qmcinternal:replace_trim with storage qmc:temp args

$execute if score @s qmc.trimticks matches $(time).. run scoreboard players set @s qmc.trimticks 0
