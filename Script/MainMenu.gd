extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Lets_Play_pressed():
	get_tree().change_scene("res://Scenes/Level1.tscn")


func _on_Continue_pressed():
	pass # Replace with function body.

func _on_NewGame_pressed():
	pass # Replace with function body.


func _on_About_pressed():
	$CanvasLayer/About.show()


func _on_Settings_pressed():
	$CanvasLayer/Settings.show()


func _on_Close_pressed():
	get_tree().quit()


func _on_BackButton1_pressed():
	$CanvasLayer/Settings.hide()

func _on_BackButton2_pressed():
	$CanvasLayer/About.hide()



