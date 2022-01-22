extends ColorRect

export(String, FILE, "*.tscn") var next_scene_path

onready var _anim_player := $AnimationPlayer


func _ready() -> void:
	set_as_toplevel(true)


func transition_to_scene() -> void:
	_anim_player.play("fade")
	yield(_anim_player, "animation_finished")
	get_tree().change_scene(next_scene_path)
