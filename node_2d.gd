extends Node2D
# harjutus 6

var vaenlaseElud = 100
var salveSuurus = 5
var laskude_arv = 0
var tabamisprots = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$tegevus.text = ""
	$elud.text = "Elud: %s" % vaenlaseElud
	$
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("shoot") && salveSuurus> 0 && vaenlaseElud > 0:
		print("Padrunid: ", salveSuurus)
		$tegevus.text="Bang"
		$gamebg/elud.text="Bang"
		print("bang")
		salveSuurus-=1
		laskude_arv+=1
		var tabamine = randi() % 3
		if tabamine > 0:
			vaenlaseElud -= randi() % 5 + 8
			tabamisprots +=1
			print("Pihtas")
		else:
			print("Möödas")
		print("Vaenlase elud", vaenlaseElud)
		
		
	if Input.is_action_just_pressed("reload"):
		salveSuurus = 5
		$tegevus.text="Laadimine"
		print("Kata... laen")
		print("Laetud")
		
	if vaenlaseElud<=0:
		print("------------Mäng läbi------------")
		print ("Punktid: ", tabamisprots)
		print("Laskude arv: ", laskude_arv)
		print("Efektiivsus: %.2f " % (tabamisprots/laskude_arv*100))
		get_tree().paused = true
