# Collection of important methods to handle direction and animation
extends "../state.gd"

var moving_rows = {
	"top": 300, 
	"middle": 450,
	"bottom":  600
}

func enter():
	owner.get_node("Animation").play("walk")

func get_input_direction():
	return int(Input.is_action_just_pressed("ui_down")) - int(Input.is_action_just_pressed("ui_up"))