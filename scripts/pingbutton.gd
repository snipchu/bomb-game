extends Area2D

const PINGMENU = preload("res://scenes/pingmenu.tscn")

func _on_mouse_entered():
	scale = Vector2(.5,.5)
	
func _on_mouse_exited():
	scale = Vector2(.25,.25)
