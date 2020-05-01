extends KinematicBody2D

const SPEED = 520
const GRAVITY = 500
const UP = Vector2(0,-1)
const JUMP_SPEED = 250

var motion = Vector2()


func _physics_process(delta):
	var dir = 0
	motion.y += GRAVITY * delta
	if Input.is_action_pressed("move_right"):
		dir +=1
	if Input.is_action_pressed("move_left"):
		dir -=1
	if Input.is_action_pressed("Jump") and is_on_floor():
		motion.y -= JUMP_SPEED
	
	motion.x = SPEED * dir
	motion = move_and_slide(motion,UP)
