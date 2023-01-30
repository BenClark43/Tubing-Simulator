extends Node

export (PackedScene) var star_scene


func _on_Star_hit():
	var spawn_location = Vector2.ZERO
	spawn_location.x = rand_range(100,400)
	spawn_location.y = rand_range(100,400)
	
	var star = star_scene.instance()
	add_child(star)
	
	star.position = spawn_location
