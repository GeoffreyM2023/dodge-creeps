extends Node2D


signal my_signal


func _ready():
	$Timer.connect("timeout", self, "_on_Timer_timeout")
	$ColorRect.color = Color(1, 1, 0, 1)
	emit_signal("my_signal")


func _on_Timer_timeout():
	$Sprite.visible = !$Sprite.visible
	$ColorRect.visible = !$ColorRect.visible
	$Sprite.modulate = Color(0, 1, 0, 1)
	$ColorRect.modulate = Color(0, 1, 0, 1)