extends Area2D

export var falling_speed := 400

onready var _camera := $Camera2D

func _ready() -> void:
	_camera.limit_left = 0
	_camera.limit_right = 400
	position.x = Global.player_x_position

func _process(delta: float) -> void:
	position += get_direction() * delta
	Global.player_x_position = position.x



func get_direction() -> Vector2:
	var move_right = Input.get_action_strength("move_right") * 200
	var move_left = Input.get_action_strength("move_left") * 200

	return Vector2(
		move_right - move_left,
		falling_speed
	)


func _on_Player_area_entered(area: Area2D) -> void:
	area.play_sound()
	area.set_deferred("visible", false)

