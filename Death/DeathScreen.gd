extends Control

onready var reset = get_node("/root/Game")

func _on_PlayAgain_pressed():
	get_tree().change_scene("res://Game.tscn")
