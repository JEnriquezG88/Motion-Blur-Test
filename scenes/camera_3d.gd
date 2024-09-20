extends Camera3D

@export var rotationVelocity: int = 0
@export var mouseSensitivity: float = 0.1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation.y += rotationVelocity * delta

func _input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.y -= event.relative.x * mouseSensitivity
		rotation_degrees.x -= event.relative.y * mouseSensitivity
		rotation_degrees.x = clamp(rotation_degrees.x, -90, 90)
