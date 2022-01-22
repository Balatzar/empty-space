extends Node

var music = load("res://assets/music.ogg")

func _ready() -> void:
	play_music()

func play_music():
	$Music.stream = music
	# $Music.play()
