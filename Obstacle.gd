class_name Obstacle extends Node2D

@export var velocity = 300


func _ready() -> void:
	#RandomizeHeight()
	pass


func _process(delta) -> void:
	position.x -= velocity * delta
	pass


func _physics_process(delta) -> void:
	
	pass

func RandomizeHeight() -> void:
	var height = randi_range(-288,288)
	print(height)
	position.y += height
	print(position.y)

func setVelocity(newVelocity : int) -> void:
	velocity = newVelocity
