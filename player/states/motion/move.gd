extends "motion_base.gd"

var velocity = Vector2()
var speed = 5
var direction = -1

func enter():
	direction = get_input_direction()

func update(delta):
	var input_direction = get_input_direction()
	if input_direction:
		direction = input_direction
	move()
	if owner.position.y in moving_rows.values():
		emit_signal("finished", "idle")
		return

func move():
	owner.position.y += speed * direction