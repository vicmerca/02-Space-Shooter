extends Node2D

func _on_AnimatedSprite_animation_finished():    #explosion animation goes away once it is finished
	queue_free()
