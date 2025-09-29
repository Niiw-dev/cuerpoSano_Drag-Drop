extends Node2D

# Se definio la variable para detectar la seleccion del boton de inicio
var select = false

# Se definio la variable para cargar una escena
var change_scene_game = load("res://scenes/seleccion.tscn")

func _ready():
	pass 

func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	select = true
	pass # Replace with function body.


func _on_area_2d_mouse_exited():
	select = false
	pass # Replace with function body.


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		#print(event)
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			get_tree().change_scene_to_packed(change_scene_game)
	pass # Replace with function body.


