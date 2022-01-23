extends Node2D

onready var _player = $Player

func _process(delta: float) -> void:
	for star in get_tree().get_nodes_in_group("stars"):
		if star.position.y < _player.position.y and star.visible and !star.is_in_group("magic"):
			get_tree().change_scene("res://GameOver.tscn")
