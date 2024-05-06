#Roomet Altmäe
#11.03.24
#harjutus 2
#Lahenda olukord, kus kasutajal on teatud kogus raha ja ta soovib osta mingit toodet.
#Kirjuta kood, kas ta saab oma raha eest kauba kätte. Kui ei saa, siis väljasta, kui palju puudu jääb.
extends Node

func _ready():
	var rahakogus = 100
	var tootesumma=randi()%200
	if rahakogus >= tootesumma:
		print("saad toodet osta juhuuu!")
	else:
		var jaak=tootesumma-rahakogus
		print("ei saa toodet osta puudujääev raha:",jaak)
	print(rahakogus)
	print(tootesumma)
	#Kirjuta kood, mis arvutab kahe täisarvu järgi ristküliku pindala ning väljastab, 
	#kas tegemist on just ristkülikuga või ruuduga.
	var arv1 = 10
	var arv2 = 10
	var s = arv1 * arv2
	if arv1==arv2:
		print("tegemist on ruuduga mille pindalla on %d" %s)
	else:
		print("tegemist on ristküülikuga mille pindaala on %d" %s)
func _process(_delta):
	pass
	
