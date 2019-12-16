extends "../state.gd"

func enter():
	owner.get_node("AnimationPlayer").play("out_of_top_bound")

func _on_animation_finished(anim_name):
	emit_signal("finished", "idle")