extends "base.gd"

func handle_input(event):
	return .handle_input(event)

func update(delta):
	var input_direction = get_input_direction()
	if input_direction > 0 and owner.position.y == moving_rows["bottom"]:
		print("bottom exceed") #TODO
		return
	if input_direction < 0 and owner.position.y == moving_rows["top"]:
		print("top exceed") #TODO
		return
	if input_direction:
		emit_signal("finished", "move")