extends RigidBody2D

# --------------------
# TODO 1
# Create the velocity variable
# --------------------
@export var velocity: int
@export var game_controller: Node2D

# --------------------
# TODO 2
# Create the _integrate_forces method
# --------------------
func _integrate_forces(_state: PhysicsDirectBodyState2D) -> void:
	if Input.is_action_just_pressed("click"):
		linear_velocity = Vector2.UP * velocity

# --------------------
# TODO 3
# End the game
# --------------------


func _on_body_entered(_body: Node) -> void:
	# await get_tree().create_timer(2.0).timeout 
	game_controller.game_over()
