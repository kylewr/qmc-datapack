# todo: remove equip sound

item modify entity @s weapon.mainhand [{"function":"set_components","components":{"minecraft:custom_data":{"rotate_mat":1}}}]
tellraw @s {"text":"Transformed armor with trim rotation tag!","color":"green"}