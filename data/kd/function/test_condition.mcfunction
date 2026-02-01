# Easy: level 1-29
# Normal: level 30-59
# Hard: level 60+
# Tell the player their combat mode based on their level

execute if score @s temp_lvl matches 1..29 run tellraw @s {"text":"Tu combattras en mode facile","color":"green"}
execute if score @s temp_lvl matches 30..59 run tellraw @s {"text":"Tu combattras en mode normal","color":"yellow"}
execute if score @s temp_lvl matches 60.. run tellraw @s {"text":"Tu combattras en mode difficile","color":"red"}