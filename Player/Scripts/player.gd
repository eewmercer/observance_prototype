class_name Player extends CharacterBody2D

var cardinal_direction : Vector2 = Vector2.DOWN
var direction : Vector2 = Vector2.ZERO

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D 
@onready var state_machine : PlayerStateMachine = $StateMachine

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	state_machine.initialize(self)
	pass

 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")

	pass
	
func _physics_process(delta: float) -> void:
	move_and_slide()

func setDirection() -> bool:
	if direction == Vector2.ZERO:
		return false

	if abs(direction.x) > abs(direction.y):
		cardinal_direction = Vector2.RIGHT if direction.x > 0 else Vector2.LEFT
	else:
		cardinal_direction = Vector2.DOWN if direction.y > 0 else Vector2.UP

	return true
	

func updateAnimation(state: String) -> void:
	sprite.play(state + "_" + animationDirection())
	sprite.flip_h = cardinal_direction == Vector2.LEFT
	pass
	
func animationDirection() -> String:
	if cardinal_direction == Vector2.DOWN:
		return "down"
	elif cardinal_direction == Vector2.UP:
		return "up"
	else:
		return "side"
