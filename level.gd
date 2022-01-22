extends Node2D

onready var _player = $Player

func _process(delta: float) -> void:
	for star in get_tree().get_nodes_in_group("stars"):
		if star.position.y < _player.position.y and star.visible:
			print("losed")
