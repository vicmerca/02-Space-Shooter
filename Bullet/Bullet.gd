extends KinematicBody2D

export var velocity = Vector2(0,-8)
onready var Explosion = load("res://Explosion/Explosion.tscn")
onready var HUD = get_node("/root/Game/HUD")
var points = 1

func _physics_process(delta):    #makes bullet move
	position += velocity    #the number controls how fast it goes upward
	if global_position.y < -100:    #deletes the bullet after it goes a certain amount off the screen
		queue_free()

func _on_Area2D_body_entered(body):    #when the bullet hits something, it goes away... but not before doing its animation
	HUD.update_score(points)
	body.queue_free()
	var explosion = Explosion.instance()
	explosion.position = position
	get_node("/root/Game/Explosions").add_child(explosion)
	queue_free()
