extends Node2D

@onready var anim_player = $AnimationPlayer

func _ready():
	anim_player.queue("logo_appear")

func _input(event):
	if event.is_action_pressed("ui_accept"):
		anim_player.set("speed_scale", (anim_player.get("speed_scale") + 3))
		#$Transition.anim_player.set("speed_scale", anim_player.get("speed_scale"))
		get_node("/root/Transition").anim_player.set("speed_scale", anim_player.get("speed_scale"))

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "logo_appear":
		anim_player.queue("dev_appear")
	
	if anim_name == "dev_appear":
		#$Transition.PlayExit("res://Levels/main_menu.tscn")
		get_node("/root/Transition").PlayExit("res://Levels/main_menu.tscn")
