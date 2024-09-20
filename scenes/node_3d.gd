extends Node3D

# Exported variable to define the rotation speed
@export var rotation_speed: float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Rotate the object around the y-axis
	rotate_y(rotation_speed * delta)