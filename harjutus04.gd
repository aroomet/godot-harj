extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","
Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin",
"Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins",
"Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey",
"Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]


	print("Mängijate arv: ", len(players))
	print("Esimese nimi: ", players[0])
	players.sort()
	players.erase("Reyes")
	players.append("Mario")
	var pikim_nimi = ""
	for player in players:
		print(player)
		if len(pikim_nimi) < len(player):
			pikim_nimi = player
	print("pikim_nimi", pikim_nimi)
	print("-------------------------------")
	var player = {"name":"john", "posx":38, "posy":16, "items":["sword","stuff", "bow"], "gold":100}
	# kuva kuld
	print("Gold: ", player.gold)
	
	# lisa 5x suvaline kogus kulda juurde
	for i in range (5):
		var addGold = randi() % 20
		print("Kulda juurde: ", addGold)
		player.gold+= addGold
		
	print("GOld now: ", player.gold)
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
