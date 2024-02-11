extends Node


# Called when the node enters the scene tree for the first time.

var listofobj = []

func _ready():
	pass
	#var vcontainer = get_node("ScrollContainer/VBoxContainer")
	#var hcontainer
	#var image
	#var discription
	#var textobj
	#for i in Global.PROGRESSION:
		#textobj = TextureRect.new()
		#textobj.name = "box" + i[0]
		#vcontainer.add_child(textobj)
		#hcontainer = get_node("ScrollContainer/VBoxContainer/box" + i[0])
		#
		#textobj = TextureRect.new()
		#textobj.name = "image" + i[0]
		#hcontainer.add_child(textobj)
		#
		#textobj = TextureRect.new()
		#textobj.name = "discription" + i[0]
		#hcontainer.add_child(textobj)
		#
		#image = get_node("ScrollContainer/VBoxContainer/box" + i[0] + "/" + "image" + i[0])
		#discription = get_node("ScrollContainer/VBoxContainer/box" + i[0] + "/" + "discription" + i[0])
		#print(i[1])
		#image.texture = i[1]
		#listofobj.append([image, discription])
		



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var x = 0
	for i in listofobj:
		i[0].position = Vector2(400, 50*x)
		x += 1
		
		
		
func _on_button_pressed():
	get_tree().change_scene_to_file("res://titlescreen/titlescreen.tscn") # Replace with function body.





func _on_scroll_container_scroll_started():
	pass # Replace with function body.
