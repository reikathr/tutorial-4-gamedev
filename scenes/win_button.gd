extends TextureButton

@export var sceneName: String = "Level2"

func _on_pressed():
	get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
