extends RigidBody2D

@export var sceneName = "LoseScreen"

func _on_body_shape_entered(body):
	if body.get_name() == "Player":
		print('ouch')
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
	else:
		body.queue_free()
