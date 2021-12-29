extends Path2D

var timeMax = 60 #Amount of frames to pass before trigger
var timer = timeMax

func _process(delta):
	timer = timer - 1
	
	if timer <= 0:
		var enemy = preload("res://Scenes/Enemies/TestEnemy.tscn").instance()
		add_child(enemy)
		timer = timeMax #Reset timer
