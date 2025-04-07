extends Node

var score = 0
@onready var score_label = $scoreLabel

#func _ready():
	## Initialize score label when the game starts
	#score_label.text = "COINS: 0"
	#update_score_position()
	
func add_point():
	score += 1
	score_label.text = "COINS: " + str(score)
	#update_score_position()
