class_name State extends Node

#stores a reference to the player that this State belongs to
static var player: Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func Enter() -> void:
	pass
	
func Exit() -> void:
	pass
	
func process(_delta : float) -> State:
	return null 
	
func physics(_delta : float) -> State:
	return null 
	
#handles what happens with input events in the desired state
func handleInput(_event : InputEvent) -> State:
	return null
