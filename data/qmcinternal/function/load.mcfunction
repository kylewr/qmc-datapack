scoreboard objectives add consts dummy
scoreboard objectives add ptcopy dummy
scoreboard objectives add qmc.rainbow_tick_head dummy
scoreboard objectives add qmc.temp dummy
scoreboard objectives add qmc.lastScoreRanks dummy

# 1200 ticks = 1 minute
scoreboard players set $statmins consts 1200
# 72000 ticks = 1 hour
scoreboard players set $stat consts 72000
scoreboard players set $10stat consts 720000
scoreboard players set $100stat consts 7200000

scoreboard players set $deathsTier1 consts 10
scoreboard players set $deathsTier2 consts 20
scoreboard players set $deathsTier3 consts 30
scoreboard players set $deathsTier4 consts 40
scoreboard players set $deathsTier5 consts 50
scoreboard players set $deathsTier6 consts 100
scoreboard players set $deathsTier7 consts 150
scoreboard players set $deathsTier8 consts 200
scoreboard players set $ptTier1 consts 10
scoreboard players set $ptTier2 consts 40
scoreboard players set $ptTier3 consts 80
scoreboard players set $ptTier4 consts 120
scoreboard players set $ptTier5 consts 160
scoreboard players set $ptTier6 consts 200

scoreboard objectives add qmc.trimticks dummy
scoreboard objectives add qmc.trimmat dummy
scoreboard players set $max_trim_mat qmc.trimmat 12
data modify storage qmc:settings TrimRotations.time set value 20
data merge storage qmc:settings {Trims:["minecraft:amethyst","minecraft:copper","minecraft:diamond","minecraft:emerald","minecraft:gold","minecraft:iron","minecraft:lapis","minecraft:redstone","minecraft:netherite","minecraft:quartz","minecraft:redstone","minecraft:resin"]}

tellraw @a[tag=admin] {"text":"[QMC Datapack] Loaded successfully!","color":"green"}