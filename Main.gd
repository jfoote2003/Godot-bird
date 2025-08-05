extends Node2D

@onready var player = $Player
const OBSTACLE = preload("res://Collisions/Obstacles/Obstacle.tscn")

const obstacleSummonLocation = Vector2(1500,0)

var score : int = 0

func _ready():
	
	pass

func _process(delta):
	if Input.is_action_just_pressed("Exit"):
		get_tree().quit()
	pass



func _on_timer_timeout():
	print("more pipe")
	createObstacle()
	pass # Replace with function body.

func createObstacle() -> void:
	var object = OBSTACLE.instantiate()
	add_child(object)
	
	object.position = obstacleSummonLocation
	object.RandomizeHeight()
	object.setVelocity(300)
