extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var visibleThisFrame = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	visibleThisFrame = false
#	pass

func _turnVisible():
	visible = true

func _turnInvisible():
	visible = false




func _on_Area2DDown_area_entered(_area):
	visibleThisFrame = true
	_turnVisible()


func _on_Area2DDown_area_exited(_area):
	if !visibleThisFrame:
		_turnInvisible()
