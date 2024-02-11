extends Node


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

@export var PROGRESSION_SCENE = [
	["Crumbs", preload("res://food/Crumbs.tscn")],
	["Chips", preload("res://food/Chip.tscn")],
	["Candy", preload("res://food/Candy.tscn")],
	["Apple", preload("res://food/Apple.tscn")],
	["Orange", preload("res://food/Orange.tscn")],
	["Strawbery", preload("res://food/Strawberry.tscn")],
	["Rat", preload("res://food/Rat.tscn")],
	["Corn", preload("res://food/Corn.tscn")],
	["Lettuce", preload("res://food/Lettuce.tscn")],
	["Carrot", preload("res://food/Carrot.tscn")],
	["Spoon", preload("res://food/Spoon.tscn")],
	["Plate", preload("res://food/Plate.tscn")],
	["Chicken", preload("res://food/Chicken.tscn")],
	["Cat", preload("res://food/Cat.tscn")],
	["Human", preload("res://food/Human.tscn")]
	#["Fridge", load("res://food/fridge.png")],
]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
