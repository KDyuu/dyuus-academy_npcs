# Cooldowns (en secondes), 1 par trainer
scoreboard objectives add kd_entoma_cd dummy
scoreboard objectives add kd_dark_cd dummy
scoreboard objectives add kd_dragon_cd dummy
scoreboard objectives add kd_electric_cd dummy
scoreboard objectives add kd_fairy_cd dummy
scoreboard objectives add kd_fighting_cd dummy
scoreboard objectives add kd_fire_cd dummy
scoreboard objectives add kd_flying_cd dummy
scoreboard objectives add kd_ghost_cd dummy
scoreboard objectives add kd_grass_cd dummy
scoreboard objectives add kd_ground_cd dummy
scoreboard objectives add kd_ice_cd dummy
scoreboard objectives add kd_normal_cd dummy
scoreboard objectives add kd_poison_cd dummy
scoreboard objectives add kd_psychic_cd dummy
scoreboard objectives add kd_rock_cd dummy
scoreboard objectives add kd_steel_cd dummy
scoreboard objectives add kd_water_cd dummy

# Ranking league (per-player)
scoreboard objectives add ranking dummy

# Horloge globale (technique) utilisée pour décrémenter 1 fois/seconde
scoreboard objectives add kd_entoma_clock dummy
scoreboard players set #kd_clock kd_entoma_clock 0