extends KinematicBody2D

const SPEED = 520
const GRAVITY = 200
const UP = Vector2(0,-1)
const JUMP_SPEED = 1500

var motion = Vector2()


func _physics_process(delta):
	gravity()
	move()
	animate()


func move():
	if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
		motion.x = +SPEED
	else:
		motion.x =0
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		motion.y -= JUMP_SPEED
	move_and_slide(motion,UP)


func gravity():
	if not is_on_floor():
		motion.y += GRAVITY
	else:
		motion.y = 0


func animate():
	if motion.y <0:
		$AnimatedSprite.play("jump")
	elif motion.x > 0:
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = false
	elif motion.x <0:
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("idel")
