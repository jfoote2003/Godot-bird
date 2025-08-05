class_name Player extends CharacterBody2D

const GRAVITY : float = 2000 #pixels per seconds

@export var jump_speed : float = 1000 


func _ready() -> void:
	$HitBox.Collision.connect( Collide )
	pass


func _process(_delta) -> void:
	
	pass

func _physics_process(delta) -> void:
	velocity.y += delta * GRAVITY
	
	if Input.is_action_just_pressed("Jump"):
		velocity.y -= jump_speed
		pass
	
	var motion = velocity * delta
	move_and_collide(motion)
	pass

func Collide( _damage : int ) -> void:
	queue_free()
	
	get_tree().quit()
	pass
