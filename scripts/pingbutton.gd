extends Area2D


func _on_mouse_entered():
	scale = Vector2(scale.x+.25,scale.y+.25)
	Pingmenu.hover = 1

func _on_mouse_exited():
	scale = Vector2(scale.x-.25,scale.y-.25)
