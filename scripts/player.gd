extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var pingmenu = $pingmenu

const SPEED = 250.0
const JUMP_VELOCITY = -300.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	if Input.is_action_just_pressed("openping"):
		pingmenu.visible = true
	elif Input.is_action_just_released("openping"):
		pingmenu.visible = false
		
func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	var direction = Input.get_axis("moveleft", "moveright")
	if direction:
		velocity.x = direction * SPEED
		animated_sprite.play("sidewalk")
		animated_sprite.flip_h = direction==1
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animated_sprite.play("frontidle")
		animated_sprite.flip_h = false;
	move_and_slide()
