# DEBUG CRITIQUE
# tellraw @a [{"text":"[CRITIQUE] Fonction lancée par: ","color":"red"},{"selector":"@s"}]
# tellraw @a [{"text":"[CRITIQUE] Joueurs avec tag scanning: ","color":"red"},{"selector":"@a[tag=scanning]"}]

# Reset + tag l'exécutant
scoreboard players set @s temp_lvl 0
tag @s add scanning

# Scan Pokémon proches - on reste "as @s" (le joueur) et on stocke dans @s
execute at @s store result score @s temp_lvl run data get entity @e[type=cobblemon:pokemon,distance=..15,limit=1,sort=nearest] Pokemon.Level

# Debug
# tellraw @s [{"text":"[DEBUG] Niveau scanné: ","color":"gold"},{"score":{"name":"@s","objective":"temp_lvl"},"color":"yellow"}]

# Dialogues
# execute if score @s temp_lvl matches 1.. run opendialogue kd:scan_found @s
# execute unless score @s temp_lvl matches 1.. run opendialogue kd:scan_empty @s
execute if score @s temp_lvl matches 1.. run tag @s add kd_open_scan_found
execute unless score @s temp_lvl matches 1.. run tag @s add kd_open_scan_empty

tag @s remove scanning