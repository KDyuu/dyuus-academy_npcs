execute if score @s kd_fairy_cd matches 1.. run tellraw @s ["",{"text":"Tu dois attendre avant de recombattre ce dresseur (cooldown: ","color":"red"},{"score":{"name":"@s","objective":"kd_fairy_cd"}},{"text":"s).","color":"red"}]
execute if score @s kd_fairy_cd matches 1.. run return 0

# Launch battle (on win: reward + loot + start cooldown)
execute run tbcs battle GEN_9_SINGLES @s vs tbcs:fairy_league onwin {1:["pokedollars add @1 15000","loot give @1 loot kd:trainer_rewards/league","scoreboard players set @1 kd_fairy_cd 1800","scoreboard players add @1 ranking 1"]}