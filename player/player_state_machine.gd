extends "res://state_machine.gd"

func _ready():
	states_map = {
		"idle": $Idle,
		"move": $Move,
		"outOfTopBound": $OutOfTopBound,
		"outOfBottomBound": $OutOfBottomBound,
	}

func _change_state(state_name):
	"""
	The base state_machine interface this node extends does most of the work
	"""
	if not _active:
		return
	if state_name in ["idle", "move"]:
		states_stack.push_front(states_map[state_name])
	._change_state(state_name)

"""func _input(event):
	Here we only handle input that can interrupt states, attacking in this case
	otherwise we let the state node handle it
	if event.is_action_pressed("attack"):
		if current_state == $Attack:
			return
		_change_state("attack")
		return
	current_state.handle_input(event)"""
