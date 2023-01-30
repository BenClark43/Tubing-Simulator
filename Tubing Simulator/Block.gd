extends KinematicBody2D

var angular_speed = PI * 1
var gameSpeed = 400
var coordinates = position

func _process(delta):
	
	var direction = 0
	var speed = 0
	var velocity = 0
	
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	if Input.is_action_pressed("ui_up"):
		speed = -1
	elif Input.is_action_pressed("ui_down"):
		speed = 1

	
	rotation += angular_speed * direction * delta
	velocity = Vector2(0,1).rotated(rotation) * speed * gameSpeed
	#position += velocity * delta
	move_and_slide(velocity)
	
	









