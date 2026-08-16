class_name State_Idle extends State

@onready var walk : State = $"../walk"

func Enter() -> void:
	player.updateAnimation("idle")
	pass
	
func Exit() -> void:
	pass
	
func process(_delta : float) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null 
	
func physics(_delta : float) -> State:
	return null 
	
#handles what happens with input events in the desired state
func handleInput(_event : InputEvent) -> State:
	return null
