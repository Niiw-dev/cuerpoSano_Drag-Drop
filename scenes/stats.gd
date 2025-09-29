extends TextureRect

@export var slot_type: int = 0

@export var POINT = 0:
	set(value):
		POINT = value
		
		if get_parent() is PassiveSlot:
			get_parent().get_parent().calculate()


@onready var property: Dictionary = {"TEXTURE": texture, "POINT": POINT, "SLOT_TYPE": slot_type}:
	set(value):
		property = value
		texture = property["TEXTURE"]
		POINT = property["POINT"]
		slot_type = property["SLOT_TYPE"]
		if slot_type == 1:
			%BUGG.text = "CABEZA"
		elif slot_type == 2:
			%BUGG.text = "HOMBROS"
		elif slot_type == 3:
			%BUGG.text = "PECHO"
		elif slot_type == 4:
			%BUGG.text = "BRAZOS"
		elif slot_type == 5:
			%BUGG.text = "ESTOMAGO"
		elif slot_type == 6:
			%BUGG.text = "MANOS"
		elif slot_type == 7:
			%BUGG.text = "PIERNAS"
		elif slot_type == 8:
			%BUGG.text = "PENE"
		elif slot_type == 9:
			%BUGG.text = "RODILLAS"
		elif slot_type == 10:
			%BUGG.text = "PIES"
		else:
			%BUGG.text = ""
