extends MarginContainer



func _on_Start_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.get_button_index() == 1:
			get_tree().change_scene("res://Test.tscn")
	pass # Replace with function body.


func _on_Quit_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.get_button_index() == 1:
			get_tree().quit()
	pass # Replace with function body.
