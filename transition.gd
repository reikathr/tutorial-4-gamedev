extends ColorRect

@export var transition_speed: float = 1.0
var progress: float = 0.0
var is_transitioning: bool = false

func start_transition():
	is_transitioning = true
	progress = 0.0
	material.set_shader_parameter("progress", progress)

func _process(delta):
	if is_transitioning:
		progress += delta * transition_speed
		material.set_shader_parameter("progress", progress)
		if progress >= 1.0:
			is_transitioning = false
