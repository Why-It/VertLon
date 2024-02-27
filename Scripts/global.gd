extends Node2D
#Where we'll place a lot of glabal variabels for progression
#This will be autoloaded, a lot of scripts are going to be referrencing this script

func ChangeScene(file_location : String):
	get_tree().change_scene_to_file(file_location)
