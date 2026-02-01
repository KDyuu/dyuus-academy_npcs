execute if score @s kd_ice_cd matches 1.. run tellraw @s ["",{"text":"Tu dois attendre avant de recombattre ce dresseur (cooldown: ","color":"red"},{"score":{"name":"@s","objective":"kd_ice_cd"}},{"text":"s).","color":"red"}]
execute if score @s kd_ice_cd matches 1.. run return 0

execute run tbcs battle GEN_9_SINGLES @s vs tbcs:ice_league onwin {1:["pokedollars add @1 15000","loot give @1 loot kd:trainer_rewards/league","scoreboard players set @1 kd_ice_cd 1800","scoreboard players add @1 ranking 1"]}