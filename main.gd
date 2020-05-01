extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var controlled_time
var delta_controlled_time = 0
var time_started
var frames_count = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	time_started = OS.get_ticks_msec()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	controlled_time = OS.get_ticks_msec()
	
	frames_count += 0.015

	if frames_count >+ 2:
		frames_count = 0
	
#	if controlled_time >= 2:
#		delta_controlled_time += controlled_time
#		controlled_time -= delta_controlled_time

#	print(frames_count)
	material.set_shader_param("frames_count", frames_count)
