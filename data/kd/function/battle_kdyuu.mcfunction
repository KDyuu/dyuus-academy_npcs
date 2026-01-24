# ============================================================
# TRAINER: KDYUU - Ace Trainer
# Random team selection (3 variants)
# ============================================================

scoreboard objectives add trainer_rng dummy
execute store result score @s trainer_rng run random value 1..3

execute if score @s trainer_rng matches 1 run tbcs battle GEN_9_SINGLES @s vs tbcs:kdyuu_team1 onwin {1:["pokedollars add @1 500"]}
execute if score @s trainer_rng matches 2 run tbcs battle GEN_9_SINGLES @s vs tbcs:kdyuu_team2 onwin {1:["pokedollars add @1 500"]}
execute if score @s trainer_rng matches 3 run tbcs battle GEN_9_SINGLES @s vs tbcs:kdyuu_team3 onwin {1:["pokedollars add @1 500"]}
