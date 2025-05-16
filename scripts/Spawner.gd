extends Node2D

@export var obstacle : PackedScene
@export var spawnTime : int = 2

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child.call_deferred(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(-1000, 1000)

	spawned.global_position = spawn_pos
	
	if spawned is RigidBody2D:
		spawned.gravity_scale = 0.3

func repeat():
	spawn()
	await get_tree().create_timer(spawnTime).timeout
	repeat()
