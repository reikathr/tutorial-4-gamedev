extends Area2D

@export var sceneName: String = "Level1"

func _on_body_entered(body):
	var current_scene = str("levels/"+get_tree().get_current_scene().get_name())
	if body.get_name() == "Player":
		if current_scene == str(sceneName):
			Global.lives -=1
		if (Global.lives == 0):
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/ui/GameOver.tscn")))
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + sceneName + ".tscn")))
