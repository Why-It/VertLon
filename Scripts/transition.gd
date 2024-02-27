extends Control

@onready var anim_player = $AnimationPlayer

var desired_scene : String

func _init():
	if Engine.is_editor_hint():
		anim_player.set("speed_scale", 1)

func _ready():
	anim_player.queue("enter")

func PlayExit(next_scene_file : String):
	anim_player.queue("exit")
	desired_scene = next_scene_file

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "exit":
		get_node("/root/Global").ChangeScene(desired_scene)
		print("qevn")
		$Timer.start()

func _on_timer_timeout():
	anim_player.queue("enter")
