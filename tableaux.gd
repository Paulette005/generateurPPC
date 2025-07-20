extends Control

var generateur = {
	"name" : ["petit·e","poétique","paisible","pilote","prout-prout","peureuxe", "pantouflard·e", "pailleté", "poosédæ", "paresseuxe", "pacifiste", "précieuxe", "pensif", "provocant·e","posæ", "plaisant·e","puissant·e","pressæ", "profondeur de","pyromane", "paradoxal", "prolétaire", "punk", "plaintif", "piquant·e", "positif"],
	"month" : ["poussin","plante","parking","pancake","paddler","pirate","programme","pizza","pikachu", "pigeon", "panthère","pastèque"],
	"day" : ["cool","culte","coloré","capricieuxe","cryptique","créatif","chuchoteurice","clément·e","courageuxe","curieuxe","cosmique","chouette","(au) citron","chromatique","chaotique","cavalier","cléptomane","céleste","confortable","coopératif","chanceuxe","charismatique","cheerleader","caoutchouteuxe","champetre","cristalin","content·e","captivant·e","claquant·e","chou","cultiriste"]
}

var idMonth = 0
var idDay = 0
var idName = 0

func _on_mois_naissance_item_selected(indexMonth) -> void:
	idMonth = indexMonth
	
func _on_lettre_prenom_item_selected(indexName) -> void:
	idName = indexName

func _on_jour_naissance_item_selected(indexDay) -> void:
	idDay = indexDay

func _on_valider_pressed() -> void:
	$reponse.add_text("yes")
	_affichage()
	print(generateur.month[idMonth]," ", generateur.name[idName]," ", generateur.day[idDay])

func _on_aleatoire_pressed() -> void:
	print(generateur.month[randi_range(0,11)]," ", generateur.name[randi_range(0,25)]," ", generateur.day[randi_range(0,30)])

func _affichage():
	$reponse.visible = true
	$centrage.visible = false
