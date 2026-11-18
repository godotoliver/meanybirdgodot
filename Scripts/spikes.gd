extends CharacterBody2D

# The speed the spikes move at
@export var speed : int
@export var time_to_destroy: int = 1

func _ready() -> void:
	var timer = Timer.new()
	timer.wait_time = time_to_destroy
	timer.autostart = true
	timer.timeout.connect(destory_spikes)
	add_child(timer)

func _process(delta: float) -> void:
	# Get position of Spikes and move Spikes using speed variable
	position += Vector2(-speed * delta, 0)

func destory_spikes():
	queue_free()
