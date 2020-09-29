extends Node2D

onready var Enemy = load("res://Enemy/Enemy.tscn")
export var spawn_probability = 0.1
onready var w = int(get_viewport_rect().size.x)
onready var score = get_node("/root/Game/HUD")

func _ready():
	randomize()


func _on_Timer_timeout():    #makes enemies spawn every once in awhile
	if randf() < spawn_probability:
		var enemy = Enemy.instance()
		enemy.position = Vector2(randi() % w, -20)
		get_node("/root/Game/Enemies").add_child(enemy)
		spawn_probability += score.score/100
