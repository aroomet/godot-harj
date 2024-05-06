#Roomet Altmae
#05.03.24
#harjutus 1
extends Node

func _ready():
	var playerName ="Roomet"
	var life =1
	var lug =0
	var lisaelu =2
	for character in playerName:
		lug +=1
	var liitmine = life +lisaelu
	print("mängija nimi:",playerName)
	print("mängija elud:",liitmine)
	print("mängija nime tähtede arv:",lug)
	print("üks suvaline number 0 kuni 19:",randi() %20)
pass
