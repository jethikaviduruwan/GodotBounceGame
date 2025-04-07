extends Area2D
@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _ready():
	if has_node("AnimatedSprite2D"):
		$AnimatedSprite2D.play("idle")  # Optional: Play idle by default
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "Player":  # Make sure this matches your actual player node name
		if has_node("CollisionShape2D"):
			$CollisionShape2D.disabled = true  # Prevent further triggers

		if has_node("AnimatedSprite2D"):
			game_manager.add_point()
			animation_player.play("pickup")
		
