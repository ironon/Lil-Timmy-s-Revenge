extends Node

func save_data(content):
	var file = FileAccess.open("res://save_game.txt", FileAccess.WRITE)
	#file.open("res://save_game.txt", File.WRITE)
	file.store_string(content)
	#for i in data.size():
		#file.store_line(str(data.keys()[i],":",data.values()[i],"\r").replace(" ","")) 
	#file.close()
	

func load_data():
	var file = FileAccess.open("res://save_game.txt", FileAccess.READ)
	if file == null:
		return null;
		
	var a_content = file.get_as_text()
	var content = {}
	for i in file.get_as_text().count(":"):
		var line = file.get_line()
		var key = line.split(":")[0]
		var value = line.split(":")[1]
		if value.is_valid_integer():
			value = int(value)
		elif value.is_valid_float():
			value = float(value)
		elif value.begins_with("["):
			value = value.trim_prefix("[")
			value = value.trim_suffix("]")
			value = value.split(",")
		content[key] = value
	file.close()
	return content

@export var PROGRESSION = [
	["Crumbs", load("res://food/crumbs.png")],
	["Chips", load("res://food/chips.png")],
	["Candy", load("res://food/candy.png")],
	["Fruit", load("res://food/fruit.png")],
	["Orange", load("res://food/orange.png")],
	["Strawbery", load("res://food/strawberry.png")],
	["Rat", load("res://food/rat.png")],
	["Corn", load("res://food/corn.png")],
	["Lettuce", load("res://food/lettuce.png")],
	["Carrots", load("res://food/carrot.png")],
	["Spoon", load("res://food/spoon.png")],
	["Plate", load("res://food/plate smile.png")],
	["Chicken", load("res://food/chicken happy.png")],
	["Cat", load("res://food/cat.png")],
	["Human", load("res://food/human.png")]
	#["Fridge", load("res://food/fridge.png")],
]

func init_save_data() -> Dictionary:
	var saved = load_data()

	if saved == null:
		var saved_data = {
			
			"Crumbs" : false,
			"Chips" : false,
			"Candy" : false,
			"Fruit" : false,
			"Orange" : false,
			"Strawbery" : false,
			"Rat" : false,
			"Corn" : false,
			"Lettuce" : false,
			"Carrots" : false,
			"Spoon" : false,
			"Plate" : false,
			"Chicken" : false,
			"Cat" : false,
			"Human" : false,
			
		}
		return saved_data
	return saved
@export var saved_data = init_save_data()




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
