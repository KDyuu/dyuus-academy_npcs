execute if score @s kd_fire_cd matches 1.. run tellraw @s ["",{"text":"Tu dois attendre avant de recombattre ce dresseur (cooldown: ","color":"red"},{"score":{"name":"@s","objective":"kd_fire_cd"}},{"text":"s).","color":"red"}]
execute if score @s kd_fire_cd matches 1.. run return 0

execute unless score @s temp_lvl matches 0.. run tellraw @s ["",{"text":"Tu dois d'abord scanner ton Pokémon au Scanner !","color":"red"}]
execute unless score @s temp_lvl matches 0.. run return 0

execute if score @s temp_lvl matches 1..29 run tbcs battle GEN_9_SINGLES @s vs tbcs:fire_easy onwin {1:["pokedollars add @1 1000","loot give @1 loot kd:trainer_rewards/easy","scoreboard players set @1 kd_fire_cd 1800"]}
execute if score @s temp_lvl matches 30..59 run tbcs battle GEN_9_SINGLES @s vs tbcs:fire_normal onwin {1:["pokedollars add @1 2000","loot give @1 loot kd:trainer_rewards/normal","scoreboard players set @1 kd_fire_cd 1800"]}
execute if score @s temp_lvl matches 60.. run tbcs battle GEN_9_SINGLES @s vs tbcs:fire_hard onwin {1:["pokedollars add @1 5000","loot give @1 loot kd:trainer_rewards/hard","scoreboard players set @1 kd_fire_cd 1800"]}