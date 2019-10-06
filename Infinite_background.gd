extends Node

var screen_width = ProjectSettings.get_setting("display/window/size/width")
var move_speed = [150, 100, 50]
var backgrounds = []
var end_coords = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(3):
		backgrounds.append([])
		for j in range(2):
			backgrounds[i].append(get_node("dynamic_background_" + str(i) + str(j)))
		end_coords.append(-screen_width + backgrounds[i][0].get_position().x)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in range(len(backgrounds)):
		for j in range(2):
			var position = backgrounds[i][j].get_position()
			position.x -= move_speed[i] * delta
			
			var size = backgrounds[i][j].get_texture().get_size().x
			if (position.x <= end_coords[i]):
				position.x += screen_width
			
			backgrounds[i][j].set_position(position)