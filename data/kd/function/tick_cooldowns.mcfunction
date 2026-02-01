# Run once per second using a 20-tick clock
scoreboard players add #kd_clock kd_entoma_clock 1

# Only do work when the clock reaches 20 ticks
execute unless score #kd_clock kd_entoma_clock matches 20.. run return 0

# Reset clock
scoreboard players set #kd_clock kd_entoma_clock 0

# Decrement cooldown (seconds)
scoreboard players remove @a[scores={kd_entoma_cd=1..}] kd_entoma_cd 1
scoreboard players remove @a[scores={kd_dark_cd=1..}] kd_dark_cd 1
scoreboard players remove @a[scores={kd_dragon_cd=1..}] kd_dragon_cd 1
scoreboard players remove @a[scores={kd_electric_cd=1..}] kd_electric_cd 1
scoreboard players remove @a[scores={kd_fairy_cd=1..}] kd_fairy_cd 1
scoreboard players remove @a[scores={kd_fighting_cd=1..}] kd_fighting_cd 1
scoreboard players remove @a[scores={kd_fire_cd=1..}] kd_fire_cd 1
scoreboard players remove @a[scores={kd_flying_cd=1..}] kd_flying_cd 1
scoreboard players remove @a[scores={kd_ghost_cd=1..}] kd_ghost_cd 1
scoreboard players remove @a[scores={kd_grass_cd=1..}] kd_grass_cd 1
scoreboard players remove @a[scores={kd_ground_cd=1..}] kd_ground_cd 1
scoreboard players remove @a[scores={kd_ice_cd=1..}] kd_ice_cd 1
scoreboard players remove @a[scores={kd_normal_cd=1..}] kd_normal_cd 1
scoreboard players remove @a[scores={kd_poison_cd=1..}] kd_poison_cd 1
scoreboard players remove @a[scores={kd_psychic_cd=1..}] kd_psychic_cd 1
scoreboard players remove @a[scores={kd_rock_cd=1..}] kd_rock_cd 1
scoreboard players remove @a[scores={kd_steel_cd=1..}] kd_steel_cd 1
scoreboard players remove @a[scores={kd_water_cd=1..}] kd_water_cd 1