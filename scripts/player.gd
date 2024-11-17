extends CharacterBody2D


const SPEED = 20.0
const JUMP_VELOCITY = -300.0

@onready var player2D = $AnimatedSprite2D 

func _ready():
	motion_mode = MOTION_MODE_GROUNDED
# Variable to track movement direction (1 for right, -1 for left)
var direction := 1

func _physics_process(delta: float) -> void:
	# Add gravity if not on the floor
	if not is_on_floor():
		velocity.y += get_gravity().y * delta  # Use only the y-component of gravity

	# Handle jump when on the floor
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Automatically move in the current direction
	velocity.x = direction * SPEED

	# Move and check for wall collisions
	move_and_slide()

	# Check if we hit a wall
	if is_on_wall():
		# Reverse direction on wall collision
		direction *= -1
		player2D.flip_h = not player2D.flip_h
		#if player2D == false:
			#player2D.flip_h = true
		#else:
			#player2D.flip_h = false
#func _input(event):
	#if event is InputEventMouseButton:
		#if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#if is_pixel_opaque(get_local_mouse_position()):
				#print("Sprite Clicked")
	#
