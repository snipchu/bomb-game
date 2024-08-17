extends Container

@onready var animated_sprite_2d = $AnimatedSprite2D

var hover = 0;

func sethovervalue(spriteimg:String):
	if spriteimg=="red.png": hover = 1
	elif spriteimg=="orange.png": hover = 2
	elif spriteimg=="yellow.png": hover = 3
	elif spriteimg=="green.png": hover = 4
	elif spriteimg=="cyan.png": hover = 5
	elif spriteimg=="blue.png": hover = 6
	elif spriteimg=="purple.png": hover = 7
	else: hover = 8
	
func _process(_delta):
	if Input.is_action_just_pressed("openping"):
		animated_sprite_2d.play("open")
	if Input.is_action_just_released("openping"):
		print(hover)
		hover = 0
		animated_sprite_2d.play("close")


func _on_pingbutton_1_mouse_entered(): hover = 1;
func _on_pingbutton_2_mouse_entered(): hover = 2
func _on_pingbutton_3_mouse_entered(): hover = 3
func _on_pingbutton_4_mouse_entered(): hover = 4
func _on_pingbutton_5_mouse_entered(): hover = 5
func _on_pingbutton_6_mouse_entered(): hover = 6
func _on_pingbutton_7_mouse_entered(): hover = 7
func _on_pingbutton_8_mouse_entered(): hover = 8


func _on_pingbutton_1_mouse_exited(caller):
	print(caller)
