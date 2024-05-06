extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy_health = 100
	var player_health = 100
	while enemy_health > 0 and player_health > 0:
		var player_hit = randi() % 8 + 8
		var enemy_hit = randi() % 8 + 8
		print("EnemyLife: %d, Hit: %d" % [enemy_health, player_hit])
		enemy_health -= player_hit
		if enemy_health <= 0:
			print("Vaenlase surm")
			break
		print("PlayerLife: %d, Hit: %d" % [player_health, enemy_hit])
		player_health -= enemy_hit
		if player_health <= 0:
			print("Mängija surm")
			break
	if player_health>enemy_health:
		print("You Win!")
	else:
		print("You Lose")
	
"""
Loo skript, mis kirjeldab mängija mõõgavõitlust vaenlasega
vaenlase elud 100 ühikut
koosta tsükkel, kus vaenlase elud vähenevad pärast iga lööki
sinu mõõga purustamistjõud on igal löögil suvaline arv vahemikus 8-15
kuva vaenlase elud ja löögid teksina
tsükkel saab läbi, kui vaenlasel on elud otsas
"""
func _process(delta):
	pass
