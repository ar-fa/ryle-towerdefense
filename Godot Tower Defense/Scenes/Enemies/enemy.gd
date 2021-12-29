extends PathFollow2D


var alive = true
var moveSpeed = 80


func _physics_process(delta):
	offset += moveSpeed * delta
	
	if unit_offset >= 1:
		queue_free() #Removes object from existence
