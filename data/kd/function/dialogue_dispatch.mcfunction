# 1) Déclenchement du scan (depuis le tag posé par le dialogue)
execute as @a[tag=kd_do_scan] at @s run function kd:scan_npc
tag @a[tag=kd_do_scan] remove kd_do_scan

# 2) Ouverture des dialogues (si le scan a posé un des tags)
execute as @a[tag=kd_open_scan_found] run opendialogue kd:scan_found @s
tag @a[tag=kd_open_scan_found] remove kd_open_scan_found

execute as @a[tag=kd_open_scan_empty] run opendialogue kd:scan_empty @s
tag @a[tag=kd_open_scan_empty] remove kd_open_scan_empty

# 3) Affichage du niveau (si le dialogue a posé le tag)
execute as @a[tag=kd_show_level] at @s run function kd:show_level
tag @a[tag=kd_show_level] remove kd_show_level

execute as @a[tag=kd_test_condition] at @s run function kd:test_condition
tag @a[tag=kd_test_condition] remove kd_test_condition

# 4) Dialogue vigile pour tp
execute as @a[tag=kd_do_vigile] at @s run function kd:scan_vigile
tag @a[tag=kd_do_vigile] remove kd_do_vigile

# ===== Trainers battles dispatch =====

# Bug
execute as @a[tag=kd_do_battle_bug_adaptive] at @s run function kd:battle_bug_adaptive
tag @a[tag=kd_do_battle_bug_adaptive] remove kd_do_battle_bug_adaptive

execute as @a[tag=kd_do_battle_bug_league] at @s run function kd:battle_bug_league
tag @a[tag=kd_do_battle_bug_league] remove kd_do_battle_bug_league

# Dark
execute as @a[tag=kd_do_battle_dark_adaptive] at @s run function kd:battle_dark_adaptive
tag @a[tag=kd_do_battle_dark_adaptive] remove kd_do_battle_dark_adaptive

execute as @a[tag=kd_do_battle_dark_league] at @s run function kd:battle_dark_league
tag @a[tag=kd_do_battle_dark_league] remove kd_do_battle_dark_league

# Dragon
execute as @a[tag=kd_do_battle_dragon_adaptive] at @s run function kd:battle_dragon_adaptive
tag @a[tag=kd_do_battle_dragon_adaptive] remove kd_do_battle_dragon_adaptive

execute as @a[tag=kd_do_battle_dragon_league] at @s run function kd:battle_dragon_league
tag @a[tag=kd_do_battle_dragon_league] remove kd_do_battle_dragon_league

# Electric
execute as @a[tag=kd_do_battle_electric_adaptive] at @s run function kd:battle_electric_adaptive
tag @a[tag=kd_do_battle_electric_adaptive] remove kd_do_battle_electric_adaptive

execute as @a[tag=kd_do_battle_electric_league] at @s run function kd:battle_electric_league
tag @a[tag=kd_do_battle_electric_league] remove kd_do_battle_electric_league

# Fairy
execute as @a[tag=kd_do_battle_fairy_adaptive] at @s run function kd:battle_fairy_adaptive
tag @a[tag=kd_do_battle_fairy_adaptive] remove kd_do_battle_fairy_adaptive

execute as @a[tag=kd_do_battle_fairy_league] at @s run function kd:battle_fairy_league
tag @a[tag=kd_do_battle_fairy_league] remove kd_do_battle_fairy_league

# Fighting
execute as @a[tag=kd_do_battle_fighting_adaptive] at @s run function kd:battle_fighting_adaptive
tag @a[tag=kd_do_battle_fighting_adaptive] remove kd_do_battle_fighting_adaptive

execute as @a[tag=kd_do_battle_fighting_league] at @s run function kd:battle_fighting_league
tag @a[tag=kd_do_battle_fighting_league] remove kd_do_battle_fighting_league

# Fire
execute as @a[tag=kd_do_battle_fire_adaptive] at @s run function kd:battle_fire_adaptive
tag @a[tag=kd_do_battle_fire_adaptive] remove kd_do_battle_fire_adaptive

execute as @a[tag=kd_do_battle_fire_league] at @s run function kd:battle_fire_league
tag @a[tag=kd_do_battle_fire_league] remove kd_do_battle_fire_league

# Flying
execute as @a[tag=kd_do_battle_flying_adaptive] at @s run function kd:battle_flying_adaptive
tag @a[tag=kd_do_battle_flying_adaptive] remove kd_do_battle_flying_adaptive

execute as @a[tag=kd_do_battle_flying_league] at @s run function kd:battle_flying_league
tag @a[tag=kd_do_battle_flying_league] remove kd_do_battle_flying_league

# Ghost
execute as @a[tag=kd_do_battle_ghost_adaptive] at @s run function kd:battle_ghost_adaptive
tag @a[tag=kd_do_battle_ghost_adaptive] remove kd_do_battle_ghost_adaptive

execute as @a[tag=kd_do_battle_ghost_league] at @s run function kd:battle_ghost_league
tag @a[tag=kd_do_battle_ghost_league] remove kd_do_battle_ghost_league

# Grass
execute as @a[tag=kd_do_battle_grass_adaptive] at @s run function kd:battle_grass_adaptive
tag @a[tag=kd_do_battle_grass_adaptive] remove kd_do_battle_grass_adaptive

execute as @a[tag=kd_do_battle_grass_league] at @s run function kd:battle_grass_league
tag @a[tag=kd_do_battle_grass_league] remove kd_do_battle_grass_league

# Ground
execute as @a[tag=kd_do_battle_ground_adaptive] at @s run function kd:battle_ground_adaptive
tag @a[tag=kd_do_battle_ground_adaptive] remove kd_do_battle_ground_adaptive

execute as @a[tag=kd_do_battle_ground_league] at @s run function kd:battle_ground_league
tag @a[tag=kd_do_battle_ground_league] remove kd_do_battle_ground_league

# Ice
execute as @a[tag=kd_do_battle_ice_adaptive] at @s run function kd:battle_ice_adaptive
tag @a[tag=kd_do_battle_ice_adaptive] remove kd_do_battle_ice_adaptive

execute as @a[tag=kd_do_battle_ice_league] at @s run function kd:battle_ice_league
tag @a[tag=kd_do_battle_ice_league] remove kd_do_battle_ice_league

# Normal
execute as @a[tag=kd_do_battle_normal_adaptive] at @s run function kd:battle_normal_adaptive
tag @a[tag=kd_do_battle_normal_adaptive] remove kd_do_battle_normal_adaptive

execute as @a[tag=kd_do_battle_normal_league] at @s run function kd:battle_normal_league
tag @a[tag=kd_do_battle_normal_league] remove kd_do_battle_normal_league

# Poison
execute as @a[tag=kd_do_battle_poison_adaptive] at @s run function kd:battle_poison_adaptive
tag @a[tag=kd_do_battle_poison_adaptive] remove kd_do_battle_poison_adaptive

execute as @a[tag=kd_do_battle_poison_league] at @s run function kd:battle_poison_league
tag @a[tag=kd_do_battle_poison_league] remove kd_do_battle_poison_league

# Psychic
execute as @a[tag=kd_do_battle_psychic_adaptive] at @s run function kd:battle_psychic_adaptive
tag @a[tag=kd_do_battle_psychic_adaptive] remove kd_do_battle_psychic_adaptive

execute as @a[tag=kd_do_battle_psychic_league] at @s run function kd:battle_psychic_league
tag @a[tag=kd_do_battle_psychic_league] remove kd_do_battle_psychic_league

# Rock
execute as @a[tag=kd_do_battle_rock_adaptive] at @s run function kd:battle_rock_adaptive
tag @a[tag=kd_do_battle_rock_adaptive] remove kd_do_battle_rock_adaptive

execute as @a[tag=kd_do_battle_rock_league] at @s run function kd:battle_rock_league
tag @a[tag=kd_do_battle_rock_league] remove kd_do_battle_rock_league

# Steel
execute as @a[tag=kd_do_battle_steel_adaptive] at @s run function kd:battle_steel_adaptive
tag @a[tag=kd_do_battle_steel_adaptive] remove kd_do_battle_steel_adaptive

execute as @a[tag=kd_do_battle_steel_league] at @s run function kd:battle_steel_league
tag @a[tag=kd_do_battle_steel_league] remove kd_do_battle_steel_league

# Water
execute as @a[tag=kd_do_battle_water_adaptive] at @s run function kd:battle_water_adaptive
tag @a[tag=kd_do_battle_water_adaptive] remove kd_do_battle_water_adaptive

execute as @a[tag=kd_do_battle_water_league] at @s run function kd:battle_water_league
tag @a[tag=kd_do_battle_water_league] remove kd_do_battle_water_league