class_name HitBox extends Area2D

signal Collision( damage : int )

func getHit(damage : int) -> void:
	Collision.emit(damage)
	pass

