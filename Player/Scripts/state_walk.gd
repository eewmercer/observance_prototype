class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle : State = $"../idle"

func Enter() -> void:
	player.updateAnimation("walk")
	pass
	
func Exit() -> void:
	pass
	
func process(_delta : float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
		
	player.velocity = player.direction * move_speed
	
	if player.setDirection():
		player.updateAnimation("walk") 
	
	return null 
	
func physics(_delta : float) -> State:
	return null 
	
#handles what happens with input events in the desired state
func handleInput(_event : InputEvent) -> State:
	return null
