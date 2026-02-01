# ============================================================
# BATTLE ELECTRIC ADAPTIVE
# Checks player's temp_lvl (from scanner NPC) and starts battle
# Adds per-player cooldown (30 min) after a win
# ============================================================

# Block if cooldown active (stored in seconds)
execute if score @s kd_electric_cd matches 1.. run tellraw @s ["",{"text":"Tu dois attendre avant de recombattre ce dresseur (cooldown: ","color":"red"},{"score":{"name":"@s","objective":"kd_electric_cd"}},{"text":"s).","color":"red"}]
execute if score @s kd_electric_cd matches 1.. run return 0

# Check if player has scanned a Pokemon (temp_lvl must exist and be > 0)
execute unless score @s temp_lvl matches 0.. run tellraw @s ["",{"text":"Tu dois d'abord scanner ton Pokémon au Scanner !","color":"red"}]
execute unless score @s temp_lvl matches 0.. run return 0

# Launch battle based on temp_lvl
# Easy: level 1-29
execute if score @s temp_lvl matches 1..29 run tbcs battle GEN_9_SINGLES @s vs tbcs:electric_easy onwin {1:["pokedollars add @1 1000","loot give @1 loot kd:trainer_rewards/easy","scoreboard players set @1 kd_electric_cd 1800"]}

# Normal: level 30-59
execute if score @s temp_lvl matches 30..59 run tbcs battle GEN_9_SINGLES @s vs tbcs:electric_normal onwin {1:["pokedollars add @1 2000","loot give @1 loot kd:trainer_rewards/normal","scoreboard players set @1 kd_electric_cd 1800"]}

# Hard: level 60+
execute if score @s temp_lvl matches 60.. run tbcs battle GEN_9_SINGLES @s vs tbcs:electric_hard onwin {1:["pokedollars add @1 5000","loot give @1 loot kd:trainer_rewards/hard","scoreboard players set @1 kd_electric_cd 1800"]}