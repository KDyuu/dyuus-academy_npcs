# Scan the player's level and open the appropriate dialogue based on the result
# if level is 1 or more, open vigile_accept dialogue
# else, open vigile_refuse dialogue

execute if score @s temp_lvl matches 1.. run opendialogue kd:vigile_accept @s
execute if score @s temp_lvl matches ..0 run opendialogue kd:vigile_refuse @s