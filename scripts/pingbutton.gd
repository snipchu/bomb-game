extends Area2D

@onready var sprite_2d = $Sprite2D

func _on_mouse_entered():
	scale = Vector2(scale.x+.25,scale.y+.25)
	Pingmenu.sethovervalue(sprite_2d.texture.get_path().get_file())
	
func _on_mouse_exited():
	scale = Vector2(scale.x-.25,scale.y-.25)
