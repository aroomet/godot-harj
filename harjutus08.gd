#Roomet Altmäe
#harjutus 8
#26.03.24


extends Node2D
var player_score = 0
var enemy_score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"player_score".text="Skoor: "+str(player_score)
	$"enemy_score".text="Skoor: "+str(enemy_score)
func _on_new_game_pressed():
	get_tree().reload_current_scene()

func _on_kivi_pressed():
	$"player_choice".text="kivi"
	game("kivi")


func _on_paber_pressed():
	$"player_choice".text="paber"
	game("paber")


func _on_kaarid_pressed():
	$"player_choice".text="käärid"
	game("käärid")

func game(valik):
	var valikud=["kivi","paber","käärid"]
	var choice = valikud[randi() % valikud.size()]
	$"enemy_choice".text=choice
	print(valik)
	print(choice)
	if valik==choice:
		$"Otsus".text="viik"
	elif valik=="kivi" && choice=="paber":
		$"Otsus".text="Arvuti võitis"
		enemy_score+=1
	elif valik=="kivi" && choice=="käärid":
		$"Otsus".text="Mängija võitis"
		player_score+=1
	elif valik=="paber" && choice=="käärid":
		$"Otsus".text="Arvuti võitis"
		enemy_score+=1
	elif valik=="käärid" && choice=="paber":
		$"Otsus".text= "Mängija võitis"
		player_score+=1
	elif valik=="käärid" && choice=="kivi":
		$"Otsus".text= "Arvuti võitis"
		enemy_score+=1
	elif valik=="paber" && choice=="kivi":
		$"Otsus".text= "Mängija võitis"
		player_score+=1
	if player_score>=10 || enemy_score>=10:
		$"player_score".text="Skoor: "+str(player_score)
		$"enemy_score".text="Skoor: "+str(enemy_score)
		get_tree().paused=true 
		if player_score>enemy_score:
			$"Otsus".text="Mängija võitis"
		else:
			$"Otsus".text="Arvuti võitis"
