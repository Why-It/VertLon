extends Control



func _on_main_menu_pressed():
	get_node("/root/Transition").PlayExit("res://Levels/main_menu.tscn")
