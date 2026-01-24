# Display current level
# tellraw @s [{"text":"[TEST] Ton niveau stocké: ","color":"white"},{"score":{"name":"@s","objective":"temp_lvl"},"color":"yellow"}]
# Check if level is 50 or more
execute if score @s temp_lvl matches 50.. run opendialogue kd:result_success @s
execute if score @s temp_lvl matches ..49 run opendialogue kd:result_fail @s
