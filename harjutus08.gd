#Roomet Altmäe
#harjutus 8
#26.03.24


extends Node2D
var vaenlasepunktid = 0
var punktid = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Sprite2D/punktid.text= "punktid:"+str(punktid)
	$Sprite2D/vaenlasepunktid.text= "punktid:"+str(vaenlasepunktid)
func game(valik):
	var valikud=["kivi","paber","käärid"]
	var arvutivalik = valikud[randi() % valikud.size()]
	print("kasutaja valik:"+valik)
	$Sprite2D/arvutivalik.text=arvutivalik
	if valik==arvutivalik:
		$Sprite2D/tulemus.text= "viik"
	elif valik=="kivi" && arvutivalik=="paber":
		$Sprite2D/tulemus.text= "arvuti võitis"
		vaenlasepunktid+=1
	elif valik=="paber" && arvutivalik=="käärid":
		$Sprite2D/tulemus.text= "arvuti võitis"
		vaenlasepunktid+=1
	elif valik=="käärid" && arvutivalik=="kivi":
		$Sprite2D/tulemus.text= "arvuti võitis"
		vaenlasepunktid+=1
	else:
		$Sprite2D/tulemus.text= "mängija võitis"
		punktid+=1
	if punktid == 10 || vaenlasepunktid==10:
		$Sprite2D/tulemus.text= "GAME OVER"
		get_tree().paused = true
func _on_uusmang_pressed():
	get_tree().reload_current_scene()


func _on_kaarid_pressed():
	$Sprite2D/valik.text="käärid"
	game("käärid")


func _on_paber_pressed():
	$Sprite2D/valik.text="paber"
	game("paber")


func _on_kivi_pressed():
	$Sprite2D/valik.text="kivi"
	game("kivi")
