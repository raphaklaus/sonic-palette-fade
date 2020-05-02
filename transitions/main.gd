extends CanvasLayer


func init(transition_speed):
	$AnimationPlayer.playback_speed = 2 * 0.5 / transition_speed
	$Shader.set_size(get_viewport().size)

func fade_in():
	print("fade in")
	$AnimationPlayer.play("fade_in")

func fade_out():
	$AnimationPlayer.play("fade_out")
