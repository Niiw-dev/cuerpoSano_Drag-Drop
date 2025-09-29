extends Node2D

var select = false

# Se definio la variable para cargar una escena
var change_scene_game_boy = load("res://scenes/test_scene.tscn")
var change_scene_game_girl = load("res://scenes/test_scene_ii.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_mouse_entered():
	select = true
	pass # Replace with function body.


func _on_area_2d_mouse_exited():
	select = false
	pass # Replace with function body.

func _on_area_2d_boy_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		#print(event)
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			get_tree().change_scene_to_packed(change_scene_game_boy)


func _on_area_2d_nina_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		#print(event)
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			get_tree().change_scene_to_packed(change_scene_game_girl)
