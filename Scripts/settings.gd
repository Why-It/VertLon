extends CanvasLayer

var previous_menu : Node
@onready var fullscreen_check = $Control/HBoxContainer/Center/Center/Panel/HBoxContainer/Center/HBoxContainer/BoxContainer2/HBoxContainer/CheckBox

func _init():
	self.hide()

func DisplaySettings():
	self.set("visible", !self.get("visible"))
	previous_menu.set("visible", !previous_menu.get("visible"))
	
	#updating the checkbox every time the menu is brought up in case
	if DisplayServer.window_get_mode() == 0:
		fullscreen_check.set("button_pressed", false)
	else:
		fullscreen_check.set("button_pressed", true)

func _ready():
	#updating the fullscreen chekcbox at the start
	if DisplayServer.window_get_mode() == 0:
		fullscreen_check.set("button_pressed", false)
	else:
		fullscreen_check.set("button_pressed", true)

func _on_check_box_toggled(toggled_on):
	
	if toggled_on == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_return_pressed():
	DisplaySettings()
