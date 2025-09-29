extends Node2D

var niño
var personaje
var res
var win_fondo
var win
var select
var scene_inicio = load("res://scenes/inicio.tscn")

func _ready():
	personaje = get_node("UI/PON")
	niño = get_node("Niño")
	niño.visible = false
	win = get_node("YouWin-removebg-preview")
	win_fondo = get_node("Fondo")
	win.visible = false
	win_fondo.visible = false


func _process(delta):
	res = personaje.text
	if res == "10":
		niño.visible = true
		win.visible = true
		win_fondo.visible = true
		#get_tree().change_scene_to_packed(load("res://scenes/inicio.tscn"))


func _on_area_2d_mouse_entered():
	select = true
	pass # Replace with function body.


func _on_area_2d_mouse_exited():
	select = false
	pass # Replace with function body.	


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			get_tree().change_scene_to_packed(scene_inicio)
