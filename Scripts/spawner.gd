extends Node2D

# Spikes scene
@export var spikes: PackedScene
# Height of the spikes
@export var height: int
# How often the spikes spawn
@export var spawn_time: float

# Sets up the timer to spawn the spikes
func _ready() -> void:
	var timer = Timer.new()
	timer.wait_time = spawn_time
	timer.autostart = true
	timer.timeout.connect(spawn_spikes)
	add_child(timer)


func spawn_spikes():
	var spike = spikes.instantiate() # Creates an instance of "spikes"
	spike.position = Vector2(500, randi_range(-height,height)) # Sets the "spike" position
	add_child(spike) # Adds "spike" as a child to Spawner
