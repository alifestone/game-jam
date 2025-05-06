
extends Area2D

@onready var level1_manager: Node = $"../../level1_manager"

func _on_body_entered(body: Node2D) -> void:
	level1_manager.add_point()
	queue_free()
