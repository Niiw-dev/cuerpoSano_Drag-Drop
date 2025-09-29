extends PanelContainer
class_name Slot

@onready var texture_rect = $TextureRect

@export_enum("CABEZA:1","HOMBROS:2","PECHO:3","BRAZOS:4","ESTOMAGO:5","MANOS:6","PIERNAS:7","PINUS:8","RODILLA:9","PIES:10") 
var slot_type : int

func _get_drag_data(at_position):
	set_drag_preview(get_preview())
	return texture_rect

func _can_drop_data(_pos, data):
	return data is TextureRect

func _drop_data(_pos, data):
	var temp = texture_rect.property
	texture_rect.property = data.property
	data.property = temp

func get_preview():
	var preview_texture = TextureRect.new()
	preview_texture.texture = texture_rect.texture
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(30,30)
	var preview = Control.new()
	preview.add_child(preview_texture)
	return preview

func get_PON():
	return texture_rect.POINT
