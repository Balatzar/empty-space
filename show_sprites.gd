extends Area2D



func _on_Star_area_entered(area: Area2D) -> void:
	for sprite in get_children():
		if sprite.get_name() != "StarSprite":
			var save_position = sprite.global_position
			remove_child(sprite)
			get_parent().add_child(sprite)
			sprite.visible = true
			sprite.global_position = save_position
		else:
			sprite.visible = false


