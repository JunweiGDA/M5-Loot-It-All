extends Area2D
@onready var sfx_player: AudioStreamPlayer = _find_sfx_player()

func _find_sfx_player() -> AudioStreamPlayer:
	for child in get_children():
		if child is AudioStreamPlayer:
			return child
	return null

func _on_area_entered(area_that_enetred: Area2D) -> void:
	get_node("CollisionShape2D").set_deferred("disabled", true)
	visible = false
	
	
