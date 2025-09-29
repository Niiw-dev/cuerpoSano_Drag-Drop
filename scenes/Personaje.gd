extends Control

@onready var point = %PON
func calculate():
	var sum = 0
	
	for i in get_children():
		sum += i.get_PON()
		
	point.text = str(sum)
	
