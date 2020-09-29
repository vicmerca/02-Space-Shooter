extends KinematicBody2D

onready var Bullet = load("res://Bullet/Bullet.tscn")

func _process(delta):
	pass

func _physics_process(delta):    #makes the ship move
	var mouse = get_local_mouse_position()
	rotation +=  mouse.angle()+1.6    #1.6 ajusts the positioning here
	if Input.is_action_just_pressed("shoot"):    #makes the ship shoot a bullet if the shoot button is pressed
		var bullet = Bullet.instance()
		bullet.position = position
		bullet.rotation = rotation
		bullet.velocity = bullet.velocity.rotated(rotation)    #all this has to do with the ship rotation
		get_node("/root/Game/Bullets").add_child(bullet)
