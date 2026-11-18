extends Node

signal score_changed(new_score) # Lets the script know that score has changed
var score : int = 0


func set_score(amount: int) -> void:
	score = amount
	emit_signal("score_changed", score) # Connected scripts are notified of score change
