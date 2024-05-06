# joosep alasoo
#19.03.24
#harjutus 6
extends Node


var vaenlaseElud = 100
var salveSuurus = 5
var skoor = 0
var tabamisprots = 0.0
var laskudearv = 0.0
func _ready():
	pass

func _process(_delta):
	if Input.is_action_just_pressed("shoot") && salveSuurus>0 && vaenlaseElud>0:
		print("padrundi:", salveSuurus)
		print("bang")
		salveSuurus-=1
		laskudearv+=1
		var tabamine = randi() % 3
		if tabamine > 0:
			vaenlaseElud -= randi() % 5+8
			tabamisprots+=1
			print("pihtas")
		else:
			print("mõõdas")
		print("vaenlase elud:", vaenlaseElud)
		
		
	if Input.is_action_just_pressed("reload"):
		salveSuurus = 5
		print("kata... laen")
		print("laetud")
	if vaenlaseElud <=0:
		print("------------------------game over------------------------")
		print("punktid:", tabamisprots)
		print("laskude arv:", laskudearv)
		print("efektiivsus: %.2f" % (tabamisprots/laskudearv*100))
		get_tree().paused = true
