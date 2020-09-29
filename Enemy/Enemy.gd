extends KinematicBody2D

export var move_speed = 2

func _physics_process(delta):    #the makes the meteors go onto the player's location
	var target = get_node("/root/Game/Player").position
	var velocity = Vector2((target.x - 100) - position.x, target.y - position.y)    #the -100 adjusts the position by a little bit
	if velocity.length() > move_speed:
		position += velocity.normalized()
	else:
		position += velocity
