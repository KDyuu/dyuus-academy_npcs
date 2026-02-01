# ============================================================
# BATTLE BUG LEAGUE
# Starts league battle
# Uses same per-player cooldown as adaptive (30 min)
# ============================================================

# Block if cooldown active (stored in seconds)
execute if score @s kd_entoma_cd matches 1.. run tellraw @s ["",{"text":"Tu dois attendre avant de recombattre Entoma (cooldown: ","color":"red"},{"score":{"name":"@s","objective":"kd_entoma_cd"}},{"text":"s).","color":"red"}]
execute if score @s kd_entoma_cd matches 1.. run return 0

# Launch battle (on win: reward + loot + start cooldown)
execute run tbcs battle GEN_9_SINGLES @s vs tbcs:bug_league onwin {1:["pokedollars add @1 15000","loot give @1 loot kd:trainer_rewards/league","scoreboard players set @1 kd_entoma_cd 1800","scoreboard players add @1 ranking 1"]}