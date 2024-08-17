extends CharacterBody2D


@export var SPEED = 300.0
@export var JUMP_VELOCITY = -800.0
const maxjump = 1
@export var currjump = 0
@export var dashspeed: float
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and currjump < maxjump:
		velocity.y = JUMP_VELOCITY
		currjump += 1
	if is_on_floor():
		currjump = 0
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		if Input.is_action_just_pressed("dashkey"):
			print("dashing")
			velocity.x += direction * dashspeed
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# Dash stuff
	
		
	move_and_slide()
