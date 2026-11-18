extends Area2D


func _ready() -> void:
	body_entered.connect(_on_body_entered)


func _on_body_entered(body: Node2D) -> void:
	# If the Player collides
	if body.name == "Player":
		# increase score by 1
		ScoreSystem.set_score(ScoreSystem.score + 1)
		queue_free()
