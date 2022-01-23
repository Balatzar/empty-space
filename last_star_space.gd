extends "res://Star.gd"

export(String, FILE, "*.tscn") var next_scene_path


func _on_Star3_area_entered(area: Area2D) -> void:
	print("star 3 detecting player")
	get_tree().change_scene(next_scene_path)

