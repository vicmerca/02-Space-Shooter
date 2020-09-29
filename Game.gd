extends Node2D

func _on_Area2D_body_entered(body):    #depleats health
	get_tree().change_scene("res://Death/DeathScreen.tscn")
