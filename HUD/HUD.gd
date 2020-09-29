extends Control

var score = 0

func _ready():
	update_score(0)

func update_score(s):
	score += s
	$Score.text = "Score: " + str(score)
