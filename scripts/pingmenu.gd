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
	print(animated_sprite_2d)
	if Input.is_action_just_pressed("openping"):
		animated_sprite_2d.play("open")
	if Input.is_action_just_released("openping"):
		animated_sprite_2d.play("close")
