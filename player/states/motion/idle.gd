extends "base.gd"

func handle_input(event):
	return .handle_input(event)

func update(delta):
	var input_direction = get_input_direction()
	if input_direction > 0 and owner.position.y == moving_rows["bottom"]:
		emit_signal("finished", "outOfBottomBound")
		return
	if input_direction < 0 and owner.position.y == moving_rows["top"]:
		emit_signal("finished", "outOfTopBound")
		return
	if input_direction:
		emit_signal("finished", "move")