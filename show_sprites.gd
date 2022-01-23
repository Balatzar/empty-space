extends "res://Star.gd"



func _on_Star_area_entered(area: Area2D) -> void:
	for sprite in get_children():
		if sprite.get_name() != "StarSprite" && sprite.get_name() != "AudioStreamPlayer":
			var save_position = sprite.global_position
			remove_child(sprite)
			get_parent().add_child(sprite)
			sprite.visible = true
			sprite.global_position = save_position
		else:
			if sprite.get_name() != "AudioStreamPlayer":
				sprite.visible = false


