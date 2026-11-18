extends Label

# Score variable
func _ready() -> void:
	ScoreSystem.connect("score_changed", Callable(self, "_on_score_changed"))
	text = str(ScoreSystem.score)

# Updates new score value
func _on_score_changed(new_score):
	text = str(new_score)
