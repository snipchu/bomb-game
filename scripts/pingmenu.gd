extends Container

var hover = 0
func _process(delta):
	if Input.is_action_just_pressed("openping"):
		visible = true
	if Input.is_action_just_released("openping"):
		print(hover)
		hover = 0
		visible = false
