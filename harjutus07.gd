# Roomet Altmäe
#19.03.24
#harjutus 6
"""
Täienda ülesanne 6 graafilise liidesega
Lisa taustapilt (bg2.jpg)
Lisa 5 dünaamilise fondi tekstivälja ja kasuta sõne formaatimist ja % -süntaksit (n: $taustapilt/ammo.text = "Ammo: %s" % kuulid )
Et näeksime GAME OVER teksti, pane mängu lõppedes see pausile get_tree().paused = true
"""
extends Node


var vaenlaseElud = 100
var salveSuurus = 5
var skoor = 0
var tabamisprots = 0.0
var laskudearv = 0.0
func _ready():
	
	pass

func _process(_delta):
	$Sprite2D/elud.text = "Elud: %s" % vaenlaseElud
	$Sprite2D/skoor.text = "Skoor: %s" % tabamisprots
	$Sprite2D/padrunid.text = "Padrunid: %s" % salveSuurus
	if Input.is_action_just_pressed("shoot") && salveSuurus>0 && vaenlaseElud>0:
		print("padrundi:", salveSuurus)
		$Sprite2D/tegevus.text = "bang bang"
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
		$Sprite2D/tegevus.text = "laadimine"
		print("kata... laen")
		print("laetud")
	if vaenlaseElud <=0:
		$Sprite2D/elud.text = "Elud: %s" % vaenlaseElud
		$Sprite2D/skoor.text = "Skoor: %s" % tabamisprots
		$Sprite2D/gameover.visible = true
		print("------------------------game over------------------------")
		print("punktid:", tabamisprots)
		print("laskude arv:", laskudearv)
		print("efektiivsus: %.2f" % (tabamisprots/laskudearv*100))
		get_tree().paused = true
