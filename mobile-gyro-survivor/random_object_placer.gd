extends Node

@export var Item:Node3D
@export var item_range: float = 560.34
@export var number_of_items:int
func  _ready():
	place_item()
	pass

func place_item():
	for n in number_of_items:
		var new_item:Node3D = Item.duplicate()
		add_child(new_item)
		new_item.position.x = randf_range(item_range, -item_range)
		new_item.position.z = randf_range(item_range, -item_range)
		
