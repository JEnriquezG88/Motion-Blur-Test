extends MeshInstance3D

@export var rotationVelocity: int = 0;

func _process(delta: float) -> void:
	rotation.x += rotationVelocity * delta;
