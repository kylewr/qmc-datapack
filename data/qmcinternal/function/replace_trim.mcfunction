$data modify storage qmc:temp trim_update.material set from storage qmc:settings Trims[$(m)]
$data modify storage qmc:temp trim_update.pattern set from entity @s equipment.$(slot).components.minecraft:trim.pattern
$data modify storage qmc:temp trim_update.slot set value "$(slot)"
$execute if items entity @s armor.$(slot) $(type)[custom_data={rotate_mat:1}] run function qmcinternal:replace_trim_internal with storage qmc:temp trim_update