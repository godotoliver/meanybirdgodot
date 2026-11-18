extends Node2D

# UI that shows up when we lose
@export var user_interface: CanvasLayer
# spawner node in the game
@export var spawner : Node2D



func _ready() -> void:
	# Set the game to normal speed at the start
	Engine.time_scale = 1
	# Sets score to 0 at start of game
	ScoreSystem.set_score(0)
	# Hide the game over UI from view at the start of the game
	user_interface.get_node("GameOverControl").hide()
	# Connects the reset button
	var button = user_interface.get_node("GameOverControl/Button")
	button.pressed.connect(_on_button_pressed)

func game_over():
	# Shows the game over canvas and stops the game
	user_interface.get_node("GameOverControl").show()
	# spawner.hide()
	Engine.time_scale = 0.1
	$CanvasLayer/ColorRectGrayscale.visible = true
	

func _on_button_pressed() -> void:
	# Reloads the scene when the reset button is pressed
	get_tree().reload_current_scene()
