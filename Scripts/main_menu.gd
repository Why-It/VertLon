extends Node2D

@onready var menu_ui = $GUI/Base

func Continue():
	pass

func Play():
	pass

func Settings():
	get_node("/root/Settings").previous_menu = menu_ui
	get_node("/root/Settings").DisplaySettings()

func Credits():
	get_node("/root/Transition").PlayExit("res://Levels/credits.tscn")

@onready var xit_popup = $"GUI/pop-up"

func ToggleExit():
	menu_ui.set("visible", !menu_ui.get("visible"))
	xit_popup.set("visible", !xit_popup.get("visible"))

#Main menu
func _on_play_pressed():
	Play()

func _on_continue_pressed():
	Continue()

func _on_settings_pressed():
	Settings()

func _on_credits_pressed():
	Credits()

func _on_exit_pressed():
	ToggleExit()

#Pop-up windows when exiting
func _on_no_pressed():
	ToggleExit()

func _on_yes_pressed():
	get_tree().quit()
